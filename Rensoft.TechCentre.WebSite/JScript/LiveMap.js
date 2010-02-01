var map = null;

function VELoad()
{
    map = new VEMap('liveMap');
    map.SetDashboardSize(VEDashboardSize.Tiny);
    map.LoadMap();
    map.SetCenterAndZoom(new VELatLong(54.16008143489336, -4.4859543442725975), 15);
    VEAddPushpin();
}

function VEAddPushpin()
{
    var shape = new VEShape(VEShapeType.Pushpin, map.GetCenter());
    shape.SetTitle('TechCentre');
    shape.SetDescription('Technology House<br/>97 Woodbourne Road<br/>Douglas<br/>Isle of Man<br/>IM1 3AW<br/><br/>Tel. 01624 665859');
    map.AddShape(shape);
}

function VEOpenPrint()
{
    window.open('HowToFindPrint.aspx', '_blank', 'width=600, height=526');
}