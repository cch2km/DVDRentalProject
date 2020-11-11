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
<title>マイページ | お客様情報</title>
</head>
<body>
<div id="container">
<!--------------- ヘッダー ---------------> 
<div id="header">
	<%@ include file="header.jsp" %>
</div>	
<!-------------------------------------> 
<div align="center">
	
	<div id="detail2">
		<div id="detail_left">
			<img src="${pageContext.request.contextPath}/resources/images/icon_new.gif" alt="new" width="60" height="40" />
		</div>
		<div id="detail_right">
			お客様情報
		</div>
	</div>
	

	<form:form modelAttribute="userModel" action="edit?paramId=${userModel.user_Id}">
	<table id="containerDetail4Tbl">
		<tr>
			<th>会員ID</th>
			<td>
				<c:out value="${userModel.user_Id}"/> &nbsp;</td>
		</tr>
		<tr>
			<th>名前</th>
			<td>
				<c:out value="${userModel.name}"/> &nbsp;</td>
		</tr>
		<tr>
			<th>フリガナ</th>
				<td><c:out value="${userModel.kana}"/> &nbsp;</td>
		</tr>
		<tr>
			<th>生年月日</th>
				<td><c:out value="${userModel.birth}"/> &nbsp;</td>
	    </tr>
		<tr>
			<th>性別</th>
			<td><c:out value="${userModel.gender}"/> &nbsp;</td>
		</tr>
		
		<tr>
			<th>携帯番号</th>
			<td><c:out value="${userModel.phone}"/> &nbsp;</td>
		</tr>
			
		<tr>
			<th>メールアドレス</th>
			<td><c:out value="${userModel.email}"/> &nbsp;</td>
		</tr>
		
		<tr>
			<th>郵便番号</th>
			<td><c:out value="${userModel.zip}"/> </td>
		</tr>
		
		<tr>
			<th>住所</th>
			<td><c:out value="${userModel.address}"/> &nbsp;</td>
			
		</tr>
		<tr>
			<th>plan</th>
			<td><c:out value="${userModel.plan}"/> &nbsp;</td>
			
		</tr>
		<tr>
			<th>point</th>
			<td><c:out value="${userModel.point}"/> &nbsp;</td>
			
		</tr>	
		<tr>
		<th colspan="2">
		<div align="center">
			<a class="radiobutton" href="edit?paramId=${userModel.user_Id}">変更</a>
		</div>
		</th>
		</tr>
	</table>
	</form:form>
	</div>
	<br />
	<p><a class="radiobutton" href="mypage">マイページへ戻る</a></p>
	<p><a class="radiobutton" href="orderList?userid=${User.user_Id}" class="menu">レンタル履歴</a></p>
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>