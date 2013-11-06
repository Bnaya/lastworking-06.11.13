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
   
<script type="text/javascript">
    var topPosition = new Array(380, 150, 5, 380, 150);
    var snd = new Audio("sounds/Get_Outside.mp3");
    var click = 0;
    //Timer 1
    var timerid = null;
    //Timer 2
    var myJson = [{ "gameName": "myFirstGame", "imgList": [{ "pics": "baby-laughing-icon.png" }, { "pics": "ballons.png" }, { "pics": "camel_7-929px.png" }, { "pics": "house-icon.png" }, { "pics": "Teddy-Bear-XL-psd34058.png"}], "DateOfMaking": "21/07/13", "Maker": "shany" },

{ "gameName": "myFirstGame", "imgList": [{ "pics": "baby-laughing-icon.png" }, { "pics": "ballons.png" }, { "pics": "camel_7-929px.png" }, { "pics": "house-icon.png" }, { "pics": "Teddy-Bear-XL-psd34058.png"}], "DateOfMaking": "21/07/13", "Maker": "michal" },

{ "gameName": "myFirstGame", "imgList": [{ "pics": "baby-laughing-icon.png" }, { "pics": "ballons.png" }, { "pics": "camel_7-929px.png" }, { "pics": "house-icon.png" }, { "pics": "Teddy-Bear-XL-psd34058.png"}], "DateOfMaking": "21/07/13", "Maker": "anaya"}];

    var symbols2 = new Array;
    // alert(game1);
    //  game1 = myJson[0]
    var num = 0;
    for (var key in myJson[0].imgList) {

        var tring = myJson[0].imgList[num].pics;
        symbols2[num] = tring;
        num = num + 1;
        
    }
        function openmenu() {
            if ($('.SubMenuSettings').is(":hidden")) {
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
            $('body').css("background-color", "black");
            if ((document.fullScreenElement && document.fullScreenElement !== null) ||
       (!document.mozFullScreen && !document.webkitIsFullScreen)) {
                if (document.documentElement.requestFullScreen) {
                    document.documentElement.requestFullScreen();
                } else if (document.documentElement.mozRequestFullScreen) {
                    document.documentElement.mozRequestFullScreen();
                } else if (document.documentElement.webkitRequestFullScreen) {
                    document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
                }
            } else {
                if (document.cancelFullScreen) {
                    document.cancelFullScreen();
                } else if (document.mozCancelFullScreen) {
                    document.mozCancelFullScreen();
                } else if (document.webkitCancelFullScreen) {
                    document.webkitCancelFullScreen();
                }
            }
        } 


        function StartSettingMenu() {
            $(".SubMenuSettings").toggle();
        }

    var restartTimer = null;
    //   var symbols = new Array("baby-laughing-icon.png", "ballons.png", "camel_7-929px.png", "house - icon.png", "Teddy-Bear-XL-psd34058.png");
    var symbolNum = 0;


    //restarting game.
    function restarting() {
        click = 0;
        document.getElementById('moving2').style.left = 40 + 'px';
        var myposition = topPosition[symbolNum];
        document.getElementById('moving2').style.top = 380 + 'px';
        clearInterval(restartTimer);

        return;
    }

    function move() {
        
    //מצא את מיקום הדמות על המסך לפי ציר השמאל
        var currentLeft = parseInt(document.getElementById('moving2').style.left);
        //בדוק האם הדמות נמצאית מחוץ גבול המסך
        if (currentLeft > window.innerWidth) {
           //הזז את הדמות, והחלף את משתנה הדמות למען טעינת דמות חדשה בלופ הבא
            document.getElementById('moving2').style.left = parseInt(document.getElementById('moving2').style.left) + 30 + "px";
            clearInterval(timerid);
            symbolNum = symbolNum + 1;
            if (symbolNum == 5) {
                symbolNum = 0;
            }
            
            document.getElementById('cat').src = "symbols/" + symbols2[symbolNum];
            snd.pause();
            snd.currentTime = 0
            restartTimer = setInterval("restarting()", 3000);

        }
        else {

            document.getElementById('moving2').style.left = currentLeft + 3 + 'px';

            document.getElementById('moving2').style.top =
    parseInt(document.getElementById('moving2').style.top) + -1 + 'px';
            snd.play();

        }
    }


    window.onload = function () {
        //calling the game name
        var JavascriptBlah = "<%=mytry%>";
        $('#<%= Label1.ClientID %>').text("משחק ה" + JavascriptBlah + " " + "של יובל ");
        //change background color
        //   $('#colums_left_li_background .sp-preview-inner').css("background-color", "#000000");
        //    var myBackgroundColor = "transparent";
        //    myBackgroundColor = $('#colums_left_li_background .sp-preview-inner').css("background-color");
        //    $('body').css("background-color", myBackgroundColor);

        //change character-light color
        //     $('#colums_left_li_Character .sp-preview-inner').css("background-color", "rgba(205,0,0,0.5)");
        // var myCharacterColor = $('#colums_left_li_Character .sp-preview-inner').css("background-color");

        document.getElementById('cat').src = "symbols/" + symbols2[symbolNum];

        document.body.onkeydown = function (e) {
            click = click + 1;
            if (click == 1) {
                timerid = null
                var currentLeft = parseInt(document.getElementById('moving2').style.left);
                var currentTop = parseInt(document.getElementById('moving2').style.top);
                //check if image is in the screen
                if ((currentLeft == 40) && (currentTop == 380)) {

                    var mystars = symbolNum + 1;
                    if (symbolNum == 0) {
                        $(".StarsBar img").attr("src", "img/star_off.png");
                    }
                    $(".StarsBar img:nth-child(" + mystars + ")").attr("src", "img/star_on.png");
                    //call the moving function on timer
                    if (timerid == null) {
                        timerid = setInterval("move()", 10);
                    } else {
                        clearInterval(timerid);
                        timerid = null;
                    }

                }
                else {

                    return;
                }
            }

            //stat moving on click
            //        document.getElementById('cat').onclick = function () {

            //            timerid = null
            //            var currentLeft = parseInt(document.getElementById('moving2').style.left);
            //            var currentTop = parseInt(document.getElementById('moving2').style.top);
            //            //check if image is in the screen
            //            if ((currentLeft == 40) && (currentTop == 380)) {

            //                //  $(".StarsBar img:nth-child(3)").attr("src", "img/star_on.png");
            //                //call the moving function on timer
            //                if (timerid == null) {
            //                    timerid = setInterval("move()", 10);
            //                } else {
            //                    clearInterval(timerid);
            //                    timerid = null;
            //                }

            //            }
            //            else {

            //                return;
            //            }
            //        }


        }
    }
    function cat_onclick() {

    }

</script>
</head>
<body>
<div id=container>
<div class="StarsBar">
    <img class="stars" src="img/star_off.png" /><img class="stars" src="img/star_off.png" /><img class="stars" src="img/star_off.png" /><img class="stars" src="img/star_off.png" /><img class="stars" src="img/star_off.png" /></div>
<header><div id="Uppermenu" class="closedMenu" onclick="openmenu()">
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
<li><div class="holding-box"><div id="colums_right_li_2" class="colums_right colums_right_li">צבע רקע הדמות</div><div id="colums_left_li_Character" class="colums_left colums_left_li"><input type='text' name='showSelectionPaletteStorage1' id='showSelectionPaletteStorage1' value='lightblue' /></div></div></li>
<li></li>
</ul>
</div>
</div>
</div>


</div>
</div>
</header>
<div id="moving2" class="movingObgect" style="position:absolute;left:40px; top:380px">
<img id="cat" class="firstglow" src="" style="position:relative" alt="my symbol" onclick="return cat_onclick()" />
    </div>

</div>
</body>

</html>

