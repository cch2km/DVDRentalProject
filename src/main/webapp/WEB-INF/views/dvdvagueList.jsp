<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hf.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/text.css"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>検索結果</title>
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
			<img src="${pageContext.request.contextPath}/resources/images/icon_search.gif" alt="search" width="60" height="40" />
		</div>
		<div id="detail_right">
			タイトル検索結果
		</div>
	</div>
</div>

	<!-------------- 検索結果 --------------> 
 	<div id="containerDetail7">
		<div align="center">
			<c:if test="${vagueList.size()>0 }">
		<table id="detailTbl4">
			<tr><th colspan="2">映画名</th><th>監督</th><th>タイプ</th><th>ジャンル</th><th>在庫</th><th>&nbsp;</th></tr>
			<c:forEach var="product" items="${vagueList}">
			<tr>
				<td width="70"><img src="${product.imgurl}" width="50"></td>
				<td><c:out value="${product.product_name}"/></td>
				<td><c:out value="${product.director}"/></td>
				<td><c:out value="${product.type}"/></td>
				<td><c:out value="${product.description}"/></td>
				<td><c:out value="${product.account}"/></td>
				<td><a href="detail?paramId=${product.product_Id}">詳細</a></td>
			</tr>
			</c:forEach>
		</table>
		</c:if>
		<c:if test="${vagueList.size()==0}">
			<p>検索結果がありません。</p>
		</c:if>
		</div>
	</div>
			
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>