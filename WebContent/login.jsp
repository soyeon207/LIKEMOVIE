<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>login</title>
<style>
    div.centersetting{
        position:absolute;
        top:40%;
        transform:translate(-50%,-50%);  
        left:50%;
        text-align:center;
    }
    
    div.logo{
        font-size:60px;
        font-family: "DomCasual BT";
        line-height: 45px;
        color:#A10000;
        margin-bottom: 80px;
        
    }
    
    #btn{
        background-color: #A10000;
        padding:3 160;
        border-radius: 20px;
        color:white;
        border:none;
        font-size:40px;
        font-family: "DomCasual BT";
    }
    
    #txt {
        font-family: "DomCasual BT";
        font-size:20px;
        color:#797979;
        padding: 0px 30px;
        border-radius: 60px;
        width:400px;
        height:60px;
        margin-bottom: 30px;
        background-color:#EFEFEF;
        border:none;
        
    }
</style>
</head>
<body>
    <img src="img/arrow.png" onclick="location.href='movie.jsp'" width="20px" height="20px" style="margin:10px;">
    <div class="centersetting">
        <div class="logo">LIKE<br>MOVIE</div>
        <input type="text" id="txt" placeholder="ID"><br>
        <input type="text" id="txt" placeholder="Password"><br>
        <button id="btn">Login</button>
    </div>
</body>
</html>