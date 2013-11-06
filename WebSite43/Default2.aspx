<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html><head>
<title>ניסיון_נוסף</title>
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
   
    <script  type="text/javascript">
    var myBackgroundColor = "transparent";
        var timerid = null;
        var myVar = null;
        var w = window.innerWidth;
        var range = new Boolean(false);
        var click = 0;
        var symbols = new Array("elmo.png", "ballons.png", "tiger.png", "Teddy-Bear-XL-psd34058.png", "krokodil.png");
        var symbolNum = 0;
        var img = document.getElementById('circle');
       

        function move() {
            range = false;
            document.getElementById('imageloader').style.left =
        parseInt(document.getElementById('imageloader').style.left) + 1 + 'px';

            //on mouse click checking correct answer
            
//           window.container.onclick= function () {
//                var currentLeft = parseInt(document.getElementById('imageloader').style.left);
//                if (click == 0) {

//                    if ((currentLeft > (w / 2) - 400) && (currentLeft < (w / 2) + 190) && (timerid !== null)) {
//                        click = click + 1;

//                        clearInterval(timerid); //stop moving from side to side
//                        range = true;
//                        document.getElementById('imageloader').style.left = (w / 2) - (parseInt(document.getElementById('imageloader').style.width) / 2) + "px";
//                        document.getElementById("imageloader").className = "animationonplace"; //play animation2

//                        myVar = setInterval(function () { //start animation 1 after 3 seconds
//                            clearInterval(myVar); // stop timer for second animation

//                            symbolNum = symbolNum + 1;
//                            if (symbolNum == 5) {
//                                symbolNum = 0;
//                            }
//                            document.getElementById('cat').src = "symbols/" + symbols[symbolNum];
//                            document.getElementById("imageloader").className = "movingObgect";

//                            document.getElementById('imageloader').style.left = -200 + 'px';
//                           
//                            //  timerid = setInterval("move()", 10);
//                            range = false;
//                            timerid = null;
//                            gameStart();
//                        }, 3000);
//                    }
//                    else {
//                        range = false;
//                        clearInterval(myVar);
//                    }
//                }
//            }
            var currentLeft = parseInt(document.getElementById('imageloader').style.left);
            if (currentLeft > w) {
                document.getElementById('imageloader').style.left = -200 + 'px';
                clearInterval(myVar);
            }

            //on keyborad up checking correct answer
            document.body.onkeydown = function (e) {
                var currentLeft = parseInt(document.getElementById('imageloader').style.left);

                if (click == 0) {
                
                    if ((currentLeft > (w / 2) - 400) && (currentLeft < (w / 2) + 190) && (timerid !== null)) {
                        var mystars = symbolNum + 1;
                    if (symbolNum == 0) {
                        $(".StarsBar img").attr("src", "img/star_off.png");
                    }
                      $(".StarsBar img:nth-child(" + mystars + ")").attr("src", "img/star_on.png");
                        click = click + 1;
                        document.getElementById('imageloader').style.left = (w / 2) - (parseInt(document.getElementById('imageloader').style.width)/2) + "px";
                        clearInterval(timerid); //stop moving from side to side
                        range = true;
                       
                        document.getElementById("imageloader").className = "animationonplace"; //play animation2

                        myVar = setInterval(function () { //start animation 1 after 3 seconds
                            document.getElementById("imageloader").className = "movingObgect";
                            document.getElementById('imageloader').style.left = -200 + 'px';
                            symbolNum = symbolNum + 1;
                            if (symbolNum == 5) {
                                symbolNum = 0;
                            }

                            clearInterval(myVar); // stop timer for second animation
                            //  timerid = setInterval("move()", 10);
                            range = false;
                            timerid = null;
                            gameStart();
                        }, 3000);
                    }
                    else {
                        range = false;
                        clearInterval(myVar);
                    }
                }
            }
        }
       


        function gameStart() {
           
            document.getElementById('cat').src = "symbols/" + symbols[symbolNum];
            var currentLeft = parseInt(document.getElementById('imageloader').style.left);
            // timerid = null;
            click = 0;
          //  if (currentLeft == 5) {
                if (timerid == null) {
                    timerid = setInterval("move()", 10);
                } else {
                    clearInterval(timerid);
                    timerid = null;
                }
           // }
        }
        window.onload = function () {
            gameStart();
            var JavascriptBlah = "<%=mytry%>";
            $('#<%= Label1.ClientID %>').text("משחק ה" + JavascriptBlah + " " + "של יובל ");
            //change background color
        $('#colums_left_li_background .sp-preview-inner').css("background-color","#000000");
        var myBackgroundColor = "transparent";
        myBackgroundColor = $('#colums_left_li_background .sp-preview-inner').css("background-color");
         $('body').css("background-color",myBackgroundColor);

         //change character-light color
          $('#colums_left_li_Character .sp-preview-inner').css("background-color","rgba(205,0,0,1)");
        var myCharacterColor = $('#colums_left_li_Character .sp-preview-inner').css("background-color");             
 
        }
    
    
        function openmenu() {
       

        if ($('.SubMenuSettings').is(":hidden")) 
        {
            $("#Uppermenu").toggleClass('openMenu closedMenu');
            $("#menuHeader").toggleClass('menuOptionson menuOptionsoff')
            }
        }

        function musicMashovOffOn() {
            $(".musicMashovBtn").toggleClass('openMenu closedMenu');
        }
        function musicBackOffOn() {
        }
        function StartfullScreen() {
        }
        function StartSettingMenu() {
        $( ".SubMenuSettings" ).toggle();

        }

        $("#showSelectionPaletteStorage").spectrum({
    showPalette: true,
    showSelectionPalette: true,
    palette: [ ],
    localStorageKey: "spectrum.homepage", // Any Spectrum with the same string will share selection
    });
    </script>
</head>
<body>
<div id=container>
<div class="StarsBar">
    <img class="stars" src="img/star_off.png" /><img class="stars" src="img/star_off.png" /><img class="stars" src="img/star_off.png" /><img class="stars" src="img/star_off.png" /><img class="stars" src="img/star_off.png" /></div>
<header style="z-index: 800;"><div id="Uppermenu" class="closedMenu" onclick="openmenu()"style="z-index: 800; position:absolute;">
<div id="menuHeader" class="menuOptionsoff">
<div class="logo"><img src="img/mini-logo.png" /></div>
<div class="Gametitle"><h1><asp:Label ID="Label1" runat="server"></asp:Label></h1></div>
<div class="buttons_row">
<div id="musicMashovBtn" class="musicMashovBtn" onclick="musicMashovOffOn()"></div>
<div id="musicBackBtn" class="musicBackBtn" onclick="musicBackOffOn()"></div>
<div id="fullScreenBtn" class="fullScreenBtn" onclick="StartfullScreen()"></div>
<div id="SettingsBtn" class="SettingsBtn" onclick="StartSettingMenu()">
<div class="SubMenuSettings">
<ul>
<li></li>
<li><div class="holding-box"><div id="colums_right_li" class="colums_right colums_right_li">צבע רקע המסך</div><div id="colums_left_li_background" class="colums_left colums_left_li"><input type='text' name='showSelectionPaletteStorage' id='showSelectionPaletteStorage' value='lightblue' /></div></div></li>
<li><div class="holding-box"><div id="colums_right_li_2" class="colums_right colums_right_li">צבע זוהר הדמות</div><div id="colums_left_li_Character" class="colums_left colums_left_li"><input type='text' name='showSelectionPaletteStorage1' id='showSelectionPaletteStorage1' value='lightblue' /></div></div></li>
<li></li>
</ul>
</div>
</div>
</div>


</div>
</div>
</header>
<div id="GameZone">
<div id="imageloader" class="movingObgect" style="height:300px; width:200px; position:absolute; left:-200px; top:250px; z-index: 100;" >
    <img id="cat" class="firstglow" src="" style="position: relative" alt="my symbol"/>
    </div>
    
    <img id="circle" class="hidden"  src="circle/circle.png" style="z-index: 0; position: absolute; left: 380px" alt="target circle" />
 
</div>
</div>
</body>

</html>
