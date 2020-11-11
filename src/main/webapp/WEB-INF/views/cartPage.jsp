<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hf.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/text.css"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>カートページ</title>
</head>
<body>
<div id="container">
<!--------------- ヘッダー ---------------> 
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<!-------------------------------------> 
<div id="containerDetail7">

<div align="center">
	<div id="detail">
		<div id="detail_left">
			<img src="${pageContext.request.contextPath}/resources/images/icon_cart.gif" alt="cart" width="60" height="40" />
		</div>
		<div id="detail_right">
			カート詳細
		</div>
	</div>
</div>
	<!--
	<p>${User.name}さんのカート</p>
	--> 

<!-- modelAttribute="productModel" -->
<form:form >

<c:if test="${cart.size()>0}">

<table id="detailTbl4" summary="購入一覧">
	<tr>
		<th>番号</th>
		<th colspan="2">映画名</th>
		<th>タイプ</th>
		<th>枚数</th>
		
		<th>在庫数</th>
		<th>処理</th>
	</tr>
	<c:forEach var="entry" items="${cart}" varStatus="vs">
	<tr>
		<td>${vs.count}</td>
		<td><img src="${entry.key.imgurl}" width="50" height="70"/></td> 
		<td><c:out value="${entry.key.product_name}"/></td>
		<td><c:out value="${entry.key.type}"/></td>
	
		<td><c:out value="${entry.value}"/></td>
		
		<td><c:out value="${entry.key.account}"/></td>
		<td><a href="cart?pId=${entry.key.product_Id}">削除する</a></td>
		
		
	</tr>	
	</c:forEach>
	
</table>
</c:if>
<c:if test="${cart.size()==0}">
	<hr/>
	　　<p>カートに${cart.size()}個の商品入っています。</p>
		<!--  <p>${message}</p>-->
		</c:if>
</form:form>
		


<p id="message">${message}</p>	
<p id="message">${message1}</p>	
<p id="message">${message2}</p>	

</div>	

<p>
	<a class="radiobutton" href="order" style="color:#00F; font-weight:bold; font-size:22px;">注文</a>
</p>

<p>
	<a class="radiobutton" href="index">トップページへ戻る</a>
</p>

<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>