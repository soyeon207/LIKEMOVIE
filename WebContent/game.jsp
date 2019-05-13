<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Slick Playground</title>
  <link rel="stylesheet" type="text/css"> 
  <style>

    body{
        background-color:#ffffff;
    }
    
    header {
        background-color:white;
        height:10%;
        position:fixed;
        width:100%;
        z-index:9999;
        top:0; 
        left:0;       
    }
    
    div.basic{
       
        position:absolute;
        top:50%;
        transform:translate(-50%,-50%);  
        color:#A10000;

    }
    
    #logosetting{
        left:9%;
        margin-right: 90px;
        font-size:35px;
        font-family: "DomCasual BT";
        line-height: 28px
    }
    
    #buttonsetting{
        left:20%;
    }
    
   button.fontbasic{
        background-color:white;
        border:none;
        color:#A10000;
        font-size: 25px;
        font-family: "DomCasual BT";
        padding:20px;
    }
    
    #bottom{
        border-color: #A10000;
        border-bottom-width: 5px;
        border-bottom-style: solid;
    }
    
    #loginsetting{
        right:9%;
    }
    
    #signup{
        color:#A10000;
    }
</style>

  <meta charset="UTF-8">
  
</head>
    <body>
    
    <header>
 	
    <div class="basic" id="logosetting" style="text-align: center;">
    LIKE<br>MOVIE
    </div>
        
    <div class="basic" id="buttonsetting"><button class="fontbasic"  style="color:#2B2B2B" onclick="location.href='movie.jsp'">MOVIE</button><button class="fontbasic" id="bottom">GAME</button></div>
    
    <div class="basic" id="loginsetting"><button class="fontbasic" style="color:#666666" onclick="location.href='login.jsp'">login</button><button class="fontbasic" id="signup" onclick="location.href='signup.jsp'">sign up</button></div>
    </header>
    
    
  

</body>
</html>