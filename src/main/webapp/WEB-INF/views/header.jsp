<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Header</title>
</head>
<body>
<!--ヘッダー-->
<div id="header"> 
	<!--ロゴ-->
	<div id="logo">
		<h1><a href="index.html"><img src="${pageContext.request.contextPath}/resources/images/musiclifeagency.jpg" width="80px" height="80" alt="Music" /></a></h1>
	</div>
	<div id="subtitle">
		取扱いタイトル国内最大級宅配DVDレンタル
		<br/>
		<span>Music Life Agency</span>
	</div>
	
	<!--各アイコン-->
	<!--
	<div id= "menu_btn">
		<a href="logout"><img src="${pageContext.request.contextPath}/resources/images/icon_logout.gif" alt="new" width="60" height="40" />ログアウト</a>
	</div>
	-->
	<div id= "menu_btn">
		<a href="mypage"><img src="${pageContext.request.contextPath}/resources/images/icon_mypage.gif" alt="mypage" width="40" height="27" /><br />マイページ</a>
	</div>
	<div id= "menu_btn">
		<a href="cart"><img src="${pageContext.request.contextPath}/resources/images/icon_cart.gif" alt="cart" width="40" height="27" /><br />カート(${totalNum})</a>
	</div>
	<div id= "menu_btn">
		<a href="login"><img src="${pageContext.request.contextPath}/resources/images/icon_login.gif" alt="login" width="40" height="27" /><br />ログイン</a>
	</div>
	<div id= "menu_btn">
		<a href="regist"><img src="${pageContext.request.contextPath}/resources/images/icon_new.gif" alt="new" width="40" height="27" /><br />新規入会</a>
    </div>
    
    <div id = "menu_btn">
    <c:if test="${User!=null}">
    	<p>${User.name}様、こんにちは！</p>	
    </c:if>
    </div>	
	
	<!--検索フォーム-->
	<div id="menu_saerch">
	<!--
   		<input type="search"  autocomplete="on" list="list" size="30">
		<input type="submit" value="検索"  />
		-->
			
			<form method="POST"/>
				<input class="textbox" type="text" name="vagueFiled" width="200px" />
				<input class="submit" type="submit" value="検索" formaction="${pageContext.request.contextPath}/head">
			<form:errors path="*" element="div" cssClass="error"/>
		
	</div>
</div>
<hr />
</body>
</html>