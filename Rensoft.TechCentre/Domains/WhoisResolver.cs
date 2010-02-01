using System;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.Text.RegularExpressions;

namespace Rensoft.TechCentre.Domains
{
	/// <summary>
	/// Queries the appropriate whois server for a given domain name and returns the results.
	/// </summary>
	public class WhoisResolver {
    
        /// <summary>
        /// Queries an appropriate whois server for the given domain name.
        /// </summary>
        /// <param name="domain">The domain name to retrieve the information of.</param>
        /// <returns>A string that contains the whois information of the specified domain name.</returns>
        /// <exception cref="ArgumentNullException"><c>domain</c> is null.</exception>
        /// <exception cref="ArgumentException"><c>domain</c> is invalid.</exception>
        /// <exception cref="SocketException">A network error occured.</exception>
        public static string Whois(string domain)
        {
            return WhoisResolver.Whois(domain, null);
        }

		public static string Whois(string domain, string server)
        {
            if (string.IsNullOrEmpty(domain))
            {
                throw new ArgumentNullException("domain", "Domain cannot be null or empty.");
            }

			int ccStart = domain.LastIndexOf(".");
            if (ccStart < 0 || ccStart == domain.Length)
            {
                throw new ArgumentOutOfRangeException("domain", "Domain length out of range.");
            }

            bool recurse = false;

            // Leave origional param in tact.
            string modDomain = domain;

            // Only recurse if we're on the first pass.
            if (server == null)
            {
                // Lookup on country code whois-servers.net server.
                string cc = domain.Substring(ccStart + 1);
                server = cc + ".whois-servers.net";

                // The net and com TLDs can be hosted with other registrars.
                if ((cc == "com") || (cc == "net"))
                {
                    // Fetch the recursive whois details.
                    modDomain = "=" + domain;
                    recurse = true;
                }
            }

            IPAddress hostAddress;
            try
            {
                hostAddress = Dns.GetHostAddresses(server)[0];
            }
            catch (Exception ex)
            {
                throw new Exception(
                    "Unable to get host address for server " +
                    "'" + server + "'. while WHOIS for '" + domain + "'.", ex);
            }

            Socket socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            socket.Connect(new IPEndPoint(hostAddress, 43));
            socket.Send(Encoding.ASCII.GetBytes(modDomain + "\r\n"));

            byte[] buffer = new byte[1024];
            int length = socket.Receive(buffer);
            string result = string.Empty;

            while (length > 0)
            {
                result += Encoding.ASCII.GetString(buffer, 0, length);
                length = socket.Receive(buffer);
            }

            socket.Shutdown(SocketShutdown.Both);
            socket.Close();

            // Dig deeper into whois results?
            if (recurse)
            {
                // Try to pull out some data.
                Match match = Regex.Match(result,
                    @"Domain Name: " + domain + @"\n" +
                    @"\s*Registrar: (.*)\n" +
                    @"\s*Whois Server: (.*)\n" +
                    @"\s*Referral",
                    RegexOptions.IgnoreCase | RegexOptions.Singleline);

                string registrar = match.Groups[1].Value;
                string newServer = match.Groups[2].Value;

                // If recursive server was found.
                if (newServer != String.Empty)
                {
                    // Return recursive WHOIS.
                    return Whois(domain, newServer);
                }
            }

            return result;
		}
	}
}