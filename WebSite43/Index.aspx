<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html><head>
<title>דף הבית - המחולל של אסיף</title>
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
    <div id="HomepageHeader" class="headerHomePage"></div>
    </header>
    <article>
    <div id="HompageMiddle" class="HompageMiddle">
   <div id="logo_holder"><a href="index.html"><asp:Image ID="logo1" runat="server" class="logo"></asp:Image></a></div>
    <div id="buttonDiv" class="holding-box">
    <div class="one_3_colums">
    <div id="TeacherEnter" class="Homebutton" />
    <a href="main_nihul.aspx"><p>כניסת מורים</p></a>
    </div>
    </div>
    <div id="middle_Colum" class="one_3_colums"><a href="index.html"><asp:Image ID="Image1" runat="server" class="logo"></asp:Image></a></div>
    <div class="one_3_colums">
    <div id="ChildEnter" class="Homebutton"/>
    <a href=""><p>כניסת תלמידים</p></a>
    </div>
    </div>
    </div>
    </div>
    </article>
    
    <footer>
    <div id="HomepageFooter" class="HomepageFooter">
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