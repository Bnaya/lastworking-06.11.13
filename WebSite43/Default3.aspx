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
</head>
<body>
<form id="Form1" runat="server">
<div id="container">
    <header>
    <div id="InnerpageHeader" class="headerInnerPage">
    <div id="middleHeader">
    <div id="logo-holder"><a href="index.html"><img src="img/inner-page/logo.png" /></a></div>
    <div id="header_label"><asp:Label ID="Label1" runat="server" Text="שלום עינת, מה תרצי לעשות? "></asp:Label>
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