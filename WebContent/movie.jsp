<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>영화</title>   
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
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

<link rel="stylesheet" type="text/css" href="css/slick.css">
  <link rel="stylesheet" type="text/css" href="css/slick-theme.css">
  <style type="text/css">
    html, body {
      margin: 0;
      padding: 0;
    }

    * {
      box-sizing: border-box;
    }

    .slider {
        width: 50%;
        margin: 100px auto;
    }

    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
    
    }

    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }

    .slick-active {
      opacity: .5;
    }

    .slick-current {
      opacity: 1;
    }
    
  </style>
  
  <script>
  
  if(document.section.txt.focus()){
	  document.section.txt.innerHTML(" ");
  }
  
  </script>
</head>

<body>

<%@ page import ="java.io.BufferedReader,java.io.InputStreamReader,java.net.HttpURLConnection,java.net.URL,java.net.URLEncoder" %>

<%
request.setCharacterEncoding("UTF-8");
String clientId = "YcPWYRTKMImaEZZeVuu_";//애플리케이션 클라이언트 아이디값;
String clientSecret = "5lrAbApKcJ";//애플리케이션 클라이언트 시크릿값";
%>

<% 

String[] title = new String[100];
String[] img = new String[100];
String[] director = new String[100];

int a=0;
try {
	
	StringBuilder sb;

	String t = request.getParameter("txt");
	if(t!=null){
		
	System.out.println(t);
	
    String text = URLEncoder.encode(t, "UTF-8");
    String apiURL = "https://openapi.naver.com/v1/search/movie?query="+ text; // json 결과
    
    URL url = new URL(apiURL);
    HttpURLConnection con = (HttpURLConnection)url.openConnection();
    
    con.setRequestMethod("GET");
    con.setRequestProperty("X-Naver-Client-Id", clientId); //시크릿 아이디 넘겨주기
    con.setRequestProperty("X-Naver-Client-Secret", clientSecret); //시크릿 비밀번호 넘겨주기
    con.connect();
    
    int responseCode = con.getResponseCode();
    
    BufferedReader br;
    if(responseCode==200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
    } else {  // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
    }
    
    sb = new StringBuilder();
    String line;
    
    while((line=br.readLine())!=null) {
    	sb.append(line+"\n");
    }
    
    br.close();
    System.out.println(sb);
   	
    String data = sb.toString();
    String[] array;
    array = data.split("\"");
    
   
   	
   	int k=0;
   	for(int i=0;i<array.length;i++){
   		
   		if(array[i].equals("title"))
   			title[k] = array[i+2];
   		if(array[i].equals("image")){
   			img[k] = array[i+2];
   			k++;
   		}
   	}
   	
   	while(title[a]!=null) {
   		a++;
   	}
   	
   
	}
} catch (Exception e) {
    System.out.println(e);
}


%>

<header style="display:block">
 	
    <div class="basic" id="logosetting" style="text-align: center;">
    LIKE<br>MOVIE
    </div>
        
    <div class="basic" id="buttonsetting"><button class="fontbasic" id="bottom">MOVIE</button><button class="fontbasic" style="color:#2B2B2B" onclick="location.href='game.jsp'">GAME</button></div>
    
    <div class="basic" id="loginsetting"><button class="fontbasic" style="color:#666666" onclick="location.href='login.jsp'">login</button><button class="fontbasic" id="signup" onclick="location.href='signup.jsp'">sign up</button></div>

</header>



    <section>
	<br>
	<form action="movie.jsp" method="post" style="position:absolute;right:25%;top:15%;">
	<input type="text" name="txt" placeholder="SEARCH BY TITLE" style="margin-left:10px;height:50px; width:700px;border-radius:18px;border: 1.3px solid #C0C0C0" > <input type="submit" value="검색">
	
	<div name="kind"></div>
	</form><br>
	</section>
	
	
    <section class="center slider" style="position:absolute; top:20%; left:23%">
    
    <% for(int i=0;i<a;i++) { %>
		<div style="display:inline">
      		<img src="<%=img[i]%>">
    	
    		제목 : <%=title[i] %><br>
    		감독 : <br>
    		평점 : <input type="text" size="2">/10<br>
    		한 마디 : <input type="text" size="10"><br>
    		<input type="button" value="등록">
    		
    	</div>
	<%} %>
    
  </section>

  <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="js/slick.min.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">     
      $(".center").slick({
        infinite: true,
        centerMode: true,
        slidesToShow: 3,
      });
</script>
</body>    
    
</html>