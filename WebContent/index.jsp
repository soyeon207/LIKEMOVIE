<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

	body {
		background-color:#ffffff;
       
	}
	
	hr.hrtag{
	height: 50px;
	width:1px;
	background-color:#A10000;
	}
	
	div.main{
	
		position:absolute;
  		top:50%;
  		left:50%;
  		transform:translate(-50%, -50%);   
		font-family :"DomCasual BT";
		color:#A10000;
		text-align:center;
		line-height:50px;
		padding:150px;
	}
    
    div.title{
        font-size:70px;
    }
	
	div.up{
        font-size:30px;
	}
    
    button.btn{
        font-size:15px;
        background-color:#ffffff;
        color:#A10000;
        padding:10px 75px;
        font-family: :"DomCasual BT"!important;
        border:1.5px solid #A10000;
        text-align:center;
        text-decoration:none;
        cursor:pointer;
        display:inline-block;
        margin-top: 50px;
    }
    
    #btn2 {
        font-family: "DomCasual BT";
    }
	
</style>
</head>
<body>

	<div class="main" >
	<hr class="hrtag">
        <div class="second">MOVIE & GAME</div>	
        
        <div class="title">
            LIKE<br>
            MOVIE  
        </div>
    <hr class="hrtag">
        
   <button class="btn" id="btn2" onclick="location.href='movie.jsp'">START NOW</button>
    
	</div>
	

</body>
</html>