<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html><head>
<title>ניהול משחקים</title>
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


    <script type="text/javascript">

    function HomeImgSrcChange()
    {
        $("#homeIcon").attr("src", "img/inner-page/nihul_games/HomeG.png");
    }
    function HomeImgSrcChangeBack() {

        $("#homeIcon").attr("src", "img/inner-page/home-btn-h.png");
    }

    </script>
</head>
<body>
<form id="Form1" runat="server">
<div id="container">
    <header>
    <div id="InnerpageHeader" class="headerInnerPage">
    <div id="middleHeader">
    <div id="logo-holder"><a href="index.html"><img title="המשחקיה של אסיף" alt="המשחקיה של אסיף" src="img/inner-page/logo.png" /></a></div>
    <div id="header_label"><asp:Label ID="Label1" runat="server" Text="ניהול משחקים"></asp:Label>
    <div id="newGameBTN"><a href="">יצירת משחק חדש</a></div>
    </div>
    
    <div id="menuDiv" class="menuhHolder">
    <ul>
    <li><a href="Index.aspx"><img title="דף הבית" alt="דף הבית" id="homeIcon" onmouseout="HomeImgSrcChangeBack()" onmouseover="HomeImgSrcChange()" src="img/inner-page/home-btn-h.png" /></a></li>
    <li><a href="">ניהול תלמידים</a></li>
    <li><a class="thisPage" href="Nihul-Games.aspx">ניהול משחקים</a></li>
    </ul>
    </div>
    <div id="searchPlace">
    <asp:Button ID="searchBTN" runat="server" Text=""></asp:Button>
       <asp:TextBox ID="searchTXT" runat="server"></asp:TextBox>
    </div>
    </div>
    </div>
    </header>
    <div class="clear"></div>
    <article>
    <div id="InnerpageMiddle" class="InnerpageMiddle">
     <p class="BreadCrumbs"><a href="">דף הבית</a> >> <a href="">ניהול ראשי</a> >> ניהול משחקים</p>

     <div id="miyunTypeGame">
     <div class="miyunTypeGameTitle" id="miyunTypeGameTitle"><p>מיין לפי סוג משחק</p></div>
     <div id="GameType">
     <div class="holding-box">
     <div class="one_of_4_colum"><div class="imageholder chosenBlock"><img alt="כל המשחקים" src="img/inner-page/nihul_games/all-games.png" /><p>כל המשחקים</p></div></div>
     <div class="one_of_4_colum"><div class="imageholder"><img title="איפה אני?" alt="איפה אני?" src="img/inner-page/Game1.png" /><p>איפה אני?</p></div></div>
     <div class="one_of_4_colum"><div class="imageholder"><img title="בול פגיעה" alt="בול פגיעה" src="img/inner-page/game2.png" /><p>בול פגיעה</p></div></div>
     <div class="one_of_4_colum"><div class="imageholder"><img title="זהה אותי" alt="זהה אותי" src="img/inner-page/Game3.png" /><p>זהה אותי</p></div></div>
     </div>
     </div>
     </div>
     <div id="miyunGameSubject">
     <div class="miyunTypeGameTitle" id="miyunSubjectGame"><p>מיין לפי נושא</p></div>
     <div id="GameCategory">
     <div class="holding-box">
     <div class="one_of_7_colum"><div class="boxCategory"><div class="imageholder"><img title="כל הנושאים" alt="כל הנושאים" src="img/inner-page/nihul_games/Books.png" onmouseover="this.src='img/inner-page/nihul_games/Books-h.png'" onmouseout="this.src='img/inner-page/nihul_games/Books.png'"/></div><p>כל הנושאים</p></div></div>
     <div class="one_of_7_colum"><div class="boxCategory"><div class="imageholder"><img title="חשבון" alt="חשבון" src="img/inner-page/nihul_games/Calculation.png" onmouseover="this.src='img/inner-page/nihul_games/Calculation-h.png'" onmouseout="this.src='img/inner-page/nihul_games/Calculation.png'"/></div><p>חשבון</p></div></div>
     <div class="one_of_7_colum"><div class="boxCategory"><div class="imageholder"><img title="תורה" alt="תורה" src="img/inner-page/nihul_games/open_book.png" onmouseover="this.src='img/inner-page/nihul_games/open_book-h.png'" onmouseout="this.src='img/inner-page/nihul_games/open_book.png'" /></div><p>תורה</p></div></div>
     <div class="one_of_7_colum"><div class="boxCategory"><div class="imageholder"><img title="חגים" alt="חגים" src="img/inner-page/nihul_games/Wine.png" onmouseover="this.src='img/inner-page/nihul_games/Wine-h.png'" onmouseout="this.src='img/inner-page/nihul_games/Wine.png'" /></div><p>חגים</p></div></div>
     <div class="one_of_7_colum"><div class="boxCategory"><div class="imageholder"><img title="נושא שנתי" alt="נושא שנתי" src="img/inner-page/nihul_games/Calendar.png" onmouseover="this.src='img/inner-page/nihul_games/Calendar-h.png'" onmouseout="this.src='img/inner-page/nihul_games/Calendar.png'" /></div><p>נושא שנתי</p></div></div>
     <div class="one_of_7_colum"><div class="boxCategory"><div class="imageholder"><img title="שפה" alt="שפה" src="img/inner-page/nihul_games/Chat.png" onmouseover="this.src='img/inner-page/nihul_games/Chat-h.png'" onmouseout="this.src='img/inner-page/nihul_games/Chat.png'"/></div><p>שפה</p></div></div>
     <div class="one_of_7_colum"><div class="boxCategory"><div class="imageholder"><img title="חפצים ודמויות" alt="חפצים ודמויות" src="img/inner-page/nihul_games/Category_stuff_character.png" onmouseover="this.src='img/inner-page/nihul_games/Category-h.png'" onmouseout="this.src='img/inner-page/nihul_games/Category_stuff_character.png'"/></div><p>חפצים ודמויות</p></div></div>
     </div>
     </div>
    </div>
    <div class="subCategory" id="Div1"></div>
  <div class="miyunTypeGameTitle" id="resultTitle"><p>תוצאות</p></div>
		<div id="result" class="">
        <div class="gameplace"><img alt="" src="img/inner-page/g1.png" /></div>
       
        </div>
    </article>
    <div class="clear"></div>

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