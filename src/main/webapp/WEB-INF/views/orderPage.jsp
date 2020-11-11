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
<title>注文確認</title>
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
			注文確認
		</div>
	</div>

<table id="detailTbl4" summary="購入一覧">

	
    <tr>
    <th>番号</th>
	<th colspan="2">映画名</th>
    <th>タイプ</th>
    <th>数量</th>
    </tr>
	<c:forEach var="entry" items="${cart}" varStatus="vs">
	<tr>
	<td>${vs.count}</td>
	<td><img src="${entry.key.imgurl}" width="50" height="50"/></td> 
		<td><c:out value="${entry.key.product_name}"/></td>
		
		<td><c:out value="${entry.key.type}"/></td>
	
		<td><c:out value="${entry.value}"/></td>
		
	</tr>	
	</c:forEach>

</table>

<br/>
<br/>
			
<hr/>
<h3>下記の住所へ郵送致します。</h3>

<table id="detailTbl4" summary="購入一覧">

	<tr>
	    <th width="50px">宛名</th>
		<td width="300px"><c:out value="${User.name}　様"/></td>
	</tr>
	
	<tr>
		<th>携帯番号</th>	
		<td><c:out value="${User.phone}"/></td>
	</tr>
	
	<tr>
		<th>郵便番号</th>	
		<td><c:out value="〒${User.zip}"/></td>
	</tr>
	
	<tr>
		<th>住所</th>	
		<td><c:out value="${User.address}"/></td>
	</tr>
	
</table>
</div>

<br/>		


<p>
	<a class="radiobutton" href="confirm" style="color:#00F; font-weight:bold; font-size:22px;">確定</a>
</p>

<p>
	<a class="radiobutton" href="cart">カートへ戻る</a>
</p>
</div>
		
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>