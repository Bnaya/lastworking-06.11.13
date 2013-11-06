<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html><head>
<title>דף ניהול ראשי</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <link href="style/StyleSheet.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="spectrum.css">

    <script type="text/javascript" src="docs/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="spectrum.js"></script>
    <script type='text/javascript' src='docs/docs.js'></script>
<script>
    function loadXMLDoc()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
}
xmlhttp.open("GET","Index.aspx",true);
xmlhttp.send();
}
</script>
</head>
<body>
<form id="Form1" runat="server">
<div id="container">
    <header>
    <div id="InnerpageHeader" class="headerInnerPage">
    <div id="middleHeader">
    <div id="logo-holder"><a href="index.html"><img src="img/inner-page/logo.png" /></a></div>
    <div id="header_label"><asp:Label ID="Label1" runat="server" Text="ניהול תלמידים"></asp:Label>
    </div>
    
    <div id="menuDiv" class="menuhHolder">
    <ul>
    <li><a href="Index.aspx"><img src="img/inner-page/nihul_games/HomeG.png" /></a></li>
    <li><a href="">ניהול תלמידים</a></li>
    <li><a href="">ניהול משחקים</a></li></ul>
    </div>
    </div>
    </div>
    </header>
    <div class="clear"></div>
    <article>
    <div id="InnerpageMiddle" class="InnerpageMiddle">
   <p class="BreadCrumbs"><a href="">דף הבית</a> >> <a href="">ניהול ראשי</a> >> ניהול תלמידים</p>
    
    <div>
    <button type="button" onclick="loadXMLDoc()">Request data</button>
    <div id="myDiv"></div>
    </div>
    </div>
    </article>
    
    <footer>
    <div class="clear"></div>
    <div id="InnerpageFooter" class="InnerpageFooter">
    <div>
    <p>מחולל זה פותח במסגרת פרויקט גמר במכון טכנולוגי חולון HIT</p>
    <p>המחלקה לטכנולוגיות למידה, על המפתחים קרא כאן</p>
    </div>
    </div>
    </footer>
    </div>
    </form>
</body>
</html>