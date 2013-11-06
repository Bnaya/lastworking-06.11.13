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
    <p class="BreadCrumbs"><a href="">דף הבית</a>>> ניהול ראשי</p>
    <div id="HeadTitle">
    <div id="mainTitle" class="holding-box">
    <div class="colums_right nihulTitle"><p><a href="#">ניהול משחקים</a></p></div>
    <div class="colums_left nihulTitle"><p><a href="#">ניהול תלמידים</a></p></div>
    </div></div>
    <div id="middlePage" class="middlePage">
    <div id="Div1" class="holding-box">
    <div class="colums_right">
    <div class="right-side-div">
    <div class="newGameBtn">ליצור משחק חדש</div>
    <div class="gamesOptionsType">
    <div class="holding-box">
    <div class="one_3_colums"><img src="img/inner-page/Game1.png" /><p>איפה אני?</p></div>
     <div class="one_3_colums"><img src="img/inner-page/game2.png" /><p>בול פגיעה</p></div>
      <div class="one_3_colums"><img src="img/inner-page/Game3.png" /><p>זהה אותי</p></div>
    </div>
    </div>
    <div class="EditGame">לערוך משחק קיים</div>
    <div class="gamesOptionsEdit">
     <div class="holding-box">
    <div class="one_3_colums">
    <div class="game-preview-nihul-page"></div>
    <div class="game-preview-nihul-page"></div>
    </div>
     <div class="one_3_colums">
     <div class="game-preview-nihul-page"></div>
     <div class="game-preview-nihul-page"><img src="img/inner-page/more.png" /></div>
     
     </div>
      <div class="one_3_colums">
      <div class="game-preview-nihul-page"></div>
      <div class="game-preview-nihul-page"></div>
      </div>
    </div>
    </div>
    </div>

    </div>
    <div class="colums_left">
   <div class="right-side-div">
    <div class="nihulButtom"><a href="#">
    <div id="holding-addChild" class="holding-box">
    <div class="colums_right btnDiv"><img alt="הוספת תלמיד חדש" src="img/inner-page/nihul_page2_01.png" /></div>
    <div class="colums_left btnDiv"><p>לאוסיף תלמיד חדש</p></div></a>
    </div>
    </div>
    <div class="nihulButtom"><a href="#">
    <div id="Div3" class="holding-box">
    <div class="colums_right btnDiv"><img alt="הגדרות נגישות" src="img/inner-page/nihul_page2_03.png" /></div>
    <div class="colums_left btnDiv"><p>לערוך הגדרות נגישות</p></div></a>
    </div>
    </div>
    <div class="nihulButtom"><a href="#">
    <div id="Div4" class="holding-box">
    <div class="colums_right btnDiv"><img alt="גרף התקדמות" src="img/inner-page/nihul_page2_05.png" /></div>
    <div class="colums_left btnDiv"><p>לצפות בגרף התקדמות</p></div></a>
    </div>
    </div>
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