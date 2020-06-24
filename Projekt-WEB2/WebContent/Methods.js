function openTab(evt, tabName) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");  
  for (i = 0; i < tablinks.length; i++) {
	tablinks[i].style.color = "black";
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(tabName+"2").style.color = "red";
  document.getElementById(tabName).style.display = "block";
  evt.currentTarget.className += " active";
} 

function onLoading() {	
	document.getElementById("Skillgames2").style.color = "red";
	document.getElementById("Skillgames").style.display = "block";
}