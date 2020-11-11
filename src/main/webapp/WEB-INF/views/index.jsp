<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hf.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/text.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/slick-theme.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/slick.css"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Music Life Agency</title>
</head>
<body>
<div id="container">
<!--------------- ヘッダー ---------------> 
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<!-------------------------------------> 

<!----------- メイン イメージ-------------> 
<!--
    <div id="main_visual">
        <h2><img src="${pageContext.request.contextPath}/resources/images/main.jpg" alt="新着商品" width="964" height="245"/></h2>
    </div>
-->  
<div class="slick01">
	<div><a href="pNameSearch?ename=hobitto1"><img alt="ホビット　思いがけない冒険" src="${pageContext.request.contextPath}/resources/images/hobit1.jpg" height="300px" width="210px"/></a></div>
	<div><a href="pNameSearch?ename=back to the future1"><img alt="バック・トゥ・ザ・フューチャーPART1" src="${pageContext.request.contextPath}/resources/images/back to the future.jpg" height="300px" width="210px"/></a></div>
	<div><a href="pNameSearch?ename=gintama"><img alt="銀魂" src="${pageContext.request.contextPath}/resources/images/gintama.jpg" height="300px" width="210px"/></a></div>
	<div><a href="pNameSearch?ename=rurounikennsinn"><img alt="るろうに剣心" src="${pageContext.request.contextPath}/resources/images/rurounikennsinn.jpg" height="300px" width="210px"/></a></div>
	<div><a href="pNameSearch?ename=haripotter1"><img alt="ハリー・ポッターと賢者の石" src="${pageContext.request.contextPath}/resources/images/harrypoter1.jpg" height="300px" width="210px"/></a></div>
	<div><a href="pNameSearch?ename=hobitto3"><img alt="ホビット　決戦のゆくえ" src="${pageContext.request.contextPath}/resources/images/hobit3.jpg" height="300px" width="210px"/></a></div>
	<div><a href="pNameSearch?ename=desunote2"><img alt="デスノート2　the Last name" src="${pageContext.request.contextPath}/resources/images/deathnote2.jpg" height="300px" width="210px"/></a></div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<!------------- メイン TEXT --------------> 

   <div id="otamesi">
      	<div id="maintitle">
	   		<p class="title1">MusicLifeAgency<span>の</span><br class="sp">ネットレンタルサービス<span>なら</span></p>
	        <p class="title2">映画・ドラマ・音楽が盛りたくさん！</p>
	        <p class="title3">お求めやすい<span>お試しプラン</span>なら 初回315円（税込）</p>
			<div id="btn">
               <h3 align="center"><a href="otamesi"><img src="${pageContext.request.contextPath}/resources/images/btn_otamesi.jpg" alt="お試しプラン" width="500" height="80"/></a></h3>
			</div>
       </div>      
   </div>

  	<!--------------- Ranking1 ----------------> 
<div id="ranking1">
       <div id="ranking1_img">レンタル人気ランキング</div>
           	<%@ include file="ranking1.jsp" %>
</div>

  	<!--------------- Ranking2 ----------------> 
<div id="ranking2">
       <div id="ranking2_img">アーティスト人気ランキング</div>
           	<%@ include file="ranking2.jsp" %>
       
</div> 

<!--------------- Ranking3 ----------------> 
<div id="ranking3">
       <div id="ranking3_img">映画監督人気ランキング</div>
           	<%@ include file="ranking3.jsp" %>
</div>

<!-------------- フッター ---------------> 
   <div id="footer">
   	<%@ include file="footer.jsp" %>
   </div>

</div>
</body>
</html>