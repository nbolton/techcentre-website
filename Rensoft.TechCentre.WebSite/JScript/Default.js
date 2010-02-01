var menuFocusedButton;
var menuFocusedDropDown;
var menuShowDropDown;
var menuHideDropDown;

function changeImage(element, src)
{
    element.src = src;
}

function setCssClass(element, className)
{
    element.className = className;
}

function showDropDown(buttonID, dropDownID)
{
    menuFocusedButton = document.getElementById(buttonID);
    menuFocusedDropDown = document.getElementById(dropDownID);
    
    setCssClass(menuFocusedButton, 'layoutMenuButtonMouseOver');
    setCssClass(menuFocusedDropDown, 'layoutMenuDropDownVisible');
}

function hideDropDown() 
{   
    setCssClass(menuFocusedButton, 'layoutMenuButtonMouseOut');
    setCssClass(menuFocusedDropDown, 'layoutMenuDropDownHidden');
}

function dropDownItemMouseOver(link)
{
    setCssClass(link, 'layoutMenuDropDownItemMouseOver');
}

function dropDownItemMouseOut(link)
{
    setCssClass(link, 'layoutMenuDropDownItemMouseOut');
}

function menuClick(url) {
	hideDropDown();
	window.location.href = url;
}