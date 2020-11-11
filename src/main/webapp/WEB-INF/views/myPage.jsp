<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="../${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="../${pageContext.request.contextPath}/resources/css/hf.css"/>
<link rel="stylesheet" type="text/css" href="../${pageContext.request.contextPath}/resources/css/text.css"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>マイページ</title>
</head>
<body>
<div id="container">
<!--------------- ヘッダー ---------------> 
<div id="header">
	<%@ include file="header.jsp" %>
</div>	
<!-------------------------------------> 
	<div align="center">
	
		<div id="detail">
		<div id="detail_left">
			<img src="${pageContext.request.contextPath}/resources/images/icon_mypage.gif" alt="mypage" width="60" height="40" />
		</div>
		<div id="detail_right">
			マイページ
		</div>
	</div>
	
	<!--
		<form:form modelAttribute="userModel">
	 
	<div id="welcome">
		 <p>ようこそ &emsp;<b><c:out value="${userModel.user_Id}"/></b>さん！
    &emsp;&emsp;&emsp; <b>${userModel.plan}</b>プラン&emsp;<b>${userModel.point}</b>ポイント</p>
    </div>
	</form:form>
	-->
	 
		<table>
			<tr><td><a href="myAccount?paramId=${User.user_Id}" class="menu">お客様情報</a></td></tr>
			<tr><td><a href="orderList?userid=${User.user_Id}" class="menu">レンタル履歴</a></td></tr>
			<tr><td><a href="logout" class="menu">ログアウト</a></td></tr>
			<tr><td><a href="delete?paramId=${User.user_Id}" class="menu">退会</a></td></tr>
		</table>
	</div>
	<br />
		<a class="radiobutton" href="index">トップページへ戻る</a>
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>