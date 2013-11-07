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

     <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
     <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
     <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>


     <script type="text/javascript" src="spectrum.js"></script>
<script>
    function loadGame1() {
        $('.gameTypeBox').removeClass('selected');
        $('.game1').addClass('selected');
        $('#gameFrame').attr('src', 'negishut_Game1.aspx');
    }
    function loadXMLDoc2() {
        $('.gameTypeBox').removeClass('selected');
        $('.game2').addClass('selected');
        $('#gameFrame').attr('src', 'negishut_Game1.aspx');
    }
    function loadXMLDoc3() {
        $('.gameTypeBox').removeClass('selected');
        $('.game3').addClass('selected');
        $('#gameFrame').attr('src', 'negishut_Game1.aspx');
    }
</script>
</head>
<body>
<form id="Form1" runat="server">
<div id="container" class="hagdarot_container">
    <header>
    <div id="InnerpageHeader" class="headerInnerPage">
    <div id="middleHeader">
    <div id="logo-holder"><a href="index.html"><img src="img/inner-page/logo.png" /></a></div>
    <div id="header_label"><asp:Label ID="Label1" runat="server" Text="ניהול תלמידים"></asp:Label>
    </div>
    
    <div id="menuDiv" class="menuhHolder">
    <ul>
    <li><a href="Index.aspx"><img src="img/inner-page/home-btn-h.png" /></a></li>
    <li><a class="thisPage" href="">ניהול תלמידים</a></li>
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
    <div class="ChooseType">
    <div class="holding-box">
    <div class="one_3_colums"><div class="gameTypeBox game1"><p>איפה אני?</p><img title="איפה אני?" alt="איפה אני?" src="img/negishut/GAME1.png" onclick="loadGame1()" /></div></div>
    <div class="one_3_colums"><div class="gameTypeBox game2"><p>בול פגיעה</p><img title="בול פגיעה" alt="בול פגיעה" src="img/negishut/GAME2.png"  onclick="loadXMLDoc2()"/></div></div>
    <div class="one_3_colums"><div class="gameTypeBox game3"><p>זהה אותי</p><img title="זהה אותי" alt="זהה אותי" src="img/negishut/GAME3.png"  onclick="loadXMLDoc3()"/></div></div>
    </div>
    </div>
    <iframe src="" id="gameFrame" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
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