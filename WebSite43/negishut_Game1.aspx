<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html><head>
<title>ניהול משחקים</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <link href="style/StyleSheet.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="spectrum.css">

  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

    <script type="text/javascript" src="spectrum.js"></script>

    <script>
        $(function () {
            $("#accordion").accordion({
                collapsible: true
            });
            $("#showSelectionPaletteStorage").spectrum({
                showPalette: true,
                localStorageKey: "spectrum.homepage", // Any picker with the same string will share selection
                showSelectionPalette: true,
                palette: []
            });
            $("#showSelectionPaletteStorage1").spectrum({
                showPalette: true,
                localStorageKey: "spectrum.homepage", // Any picker with the same string will share selection
                showSelectionPalette: true,
                palette: []
            });
        });
         
         
         function mySize()
        {

            $(".mysizeNum").click(function () {
                $('.mysizeNum').css({ "background-color": "#159694;", "color": "#c7e8be;" });
                $(this).css({ "background-color": "#c7e8be;", "color": "#159694;" });
                var innerText = parseInt($(this).text());
                var height = innerText * 50;
                $('.myPreviewElmo').css('height', height + "px");
                $('firstglow').css('height', '100%');
            })

          }
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container" class="hagdarot_container">
    <div class="content_Hagdarot">
    <div class="holding-box">
    <div class="colums_right"><p>הגדרות דמות ורקע</p></div>
     <div class="colums_left"><p>תצוגה מקדימה</p></div>
    </div>
    <div class="hagdarot_game1">
    <div class="holding-box backgroun_n_character">
    <div class="colums_right">
    <div class="backgroun_n_character">
    <div id="accordion">
  <h3>גודל הדמות</h3>
  <div class="contentbox">
  <div class="contentSize">
  <div class="holding-box">
  <div class="one_of_4_colum"><p style="font-size:18px;" class="mysizeNum" onclick="mySize()">4</p></div>
  <div class="one_of_4_colum"><p style="font-size:16px;" class="mysizeNum" onclick="mySize()">3</p></div>
  <div class="one_of_4_colum"><p style="font-size:14px;" class="mysizeNum" onclick="mySize()">2</p></div>
  <div class="one_of_4_colum"><p style="font-size:12px;" class="mysizeNum" onclick="mySize()">1</p></div>
  </div>
  </div>
  </div>
  <h3>צבע רקע</h3>  
  <div class="contentbox">
  <div class="contentcolor">
  <div  class="bgGameColor">
  <input type='text' name='showSelectionPaletteStorage' id='showSelectionPaletteStorage' value='lightblue' />
   </div></div>
   </div>
  <h3>צבע זוהר להדגשת הדמות</h3>
  <div class="contentbox">
  <div class="contentcolor">
  <div class="CharacterColorPreview">
  <input type='text' name='showSelectionPaletteStorage1' id='showSelectionPaletteStorage1' value='lightblue' />
   </div></div>
   </div>
  <h3>מהירות הבהוב</h3>
  <div class="contentbox">
  <div class="contentSize">
  <div class="holding-box">
  <div class="one_of_4_colum"><p>4</p></div>
  <div class="one_of_4_colum"><p>3</p></div>
  <div class="one_of_4_colum"><p>2</p></div>
  <div class="one_of_4_colum"><p>1</p></div>
  </div>
  </div>
  </div>
  <h3>מהירות תזוזה</h3>
  <div class="contentbox">
  <div class="contentSize">
  <div class="holding-box">
  <div class="one_of_4_colum"><p>4</p></div>
  <div class="one_of_4_colum"><p>3</p></div>
  <div class="one_of_4_colum"><p>2</p></div>
  <div class="one_of_4_colum"><p>1</p></div>
  </div>
  </div>
  </div>
   <h3>משך השהייה בין תמונה לתמונה (בשניות)</h3>
  <div class="contentbox">
  <div class="contentSize">
  <div class="holding-box">
  <div class="one_of_4_colum"><p>4</p></div>
  <div class="one_of_4_colum"><p>3</p></div>
  <div class="one_of_4_colum"><p>2</p></div>
  <div class="one_of_4_colum"><p>1</p></div>
  </div>
  </div>
  </div>
    <h3>כמות החזרה של אותה תמונה</h3>
  <div class="contentbox">
  <div class="contentSize">
  <div class="holding-box">
  <div class="one_of_4_colum"><p>4</p></div>
  <div class="one_of_4_colum"><p>3</p></div>
  <div class="one_of_4_colum"><p>2</p></div>
  <div class="one_of_4_colum"><p>1</p></div>
  </div>
  </div>
  </div>
    <h3>מיקום הדמות במסך</h3>
  <div class="contentbox">
  <div class="contentSize randomaly">
      <asp:RadioButton ID="RadioButton1" runat="server" Text="רנדומאלי" />
      <asp:RadioButton ID="RadioButton2" runat="server" Text="לא רנדומאלי" />
   </div>
   </div>
</div>
    </div>
    <div><p>הגדרות מוזיקה וצלילים</p></div>
    </div>
     <div class="colums_left">
     <div class="preview_game">
     <div id="moving2" class="myPreviewElmo" style="position:absolute;left:50px; top:200px">
<img id="cat" class="firstglow" src="symbols/elmo.png" style="position:relative" alt="my symbol" onclick="return cat_onclick()" />
    </div>
     </div>
     
     </div>
     
    </div>
    
    <div class="musicDefinitions">
    <div class="MusicTitle">
    <div class="music-box">
    <div class="rightDefinitions_music">
    <div class="holding-box">
    <div class="one_3_colums"><p>צליל משוב</p></div>
    <div class="one_3_colums"><p>משוב חיובי</p></div>
    <div class="one_3_colums"><p>משוב שלילי</p></div>
    </div>
    </div>
    <div class="leftDefinitions_music">
    <div class="holding-box">
    <div class="colums_right"><p>מוזיקה מלווה לדמות</p></div>
    <div class="colums_left"><p>בחירת המוזיקה</p></div>
    </div>
    </div>
    </div>
     </div>
    
    <div class="music-box">
    <div class="rightDefinitions_music">
    <div class="holding-box">
    <div class="one_3_colums">
    
        <asp:RadioButton class="radioServer" ID="RadioButton3" runat="server" Text="פעיל" />
        <br />
      <asp:RadioButton class="radioServer" ID="RadioButton4" runat="server" Text="לא פעיל" />
      
    </div>
    <div class="one_3_colums">
        <asp:DropDownList ID="DropDownList1" class="dropDownMusic" runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" class="ButtonsMusic" Text="בחר קובץ" />
    </div>
    <div class="one_3_colums">
     <asp:DropDownList ID="DropDownList2" class="dropDownMusic" runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button2" class="ButtonsMusic" runat="server" Text="בחר קובץ" />
    </div>
    </div>
    </div>
    <div class="leftDefinitions_music">
    <div class="holding-box">
    <div class="colums_right">
    
        <asp:RadioButton class="radioServer" ID="RadioButton5" runat="server" Text="פעיל" />
        <br />
      <asp:RadioButton class="radioServer" ID="RadioButton6" runat="server" Text="לא פעיל" />
    </div>
    <div class="colums_left">
     <asp:DropDownList ID="DropDownList3" class="dropDownMusic" runat="server">
        </asp:DropDownList>
    </div>
    </div>
    </div>
    </div>
    </div>

    </div>
    </div>
    </div>
    </form>
</body>
</html>
