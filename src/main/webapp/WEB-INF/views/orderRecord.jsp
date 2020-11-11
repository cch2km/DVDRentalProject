<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hf.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/text.css"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>レンタル履歴</title>
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
			<img src="${pageContext.request.contextPath}/resources/images/icon_new.gif" alt="user" width="60" height="40" />
		</div>
		<div id="detail_right">
			レンタル履歴
		</div>
	</div>
</div>

	<h3>${User.name}様のレンタル履歴</h3>
 	<div id="containerDetail7">
		<div align="center">

		<c:out value="${olist}"/>
		<c:if test="${rentalList.size()>0 }">
		
		<table id="detailTbl4">
			<tr><th>注文番号</th><th>枚数</th><th>注文時間</th><th>返却期限</th><th colspan="2">処理</th></tr>
			<c:forEach var="record" items="${rentalList}">
			<tr>
				<td><c:out value="${record.id}"/></td>
				<td><c:out value="${record.total}"/></td>
				<td><fmt:formatDate value="${record.orderTime}" pattern="yyyy-MM-dd" /></td>
				<td><fmt:formatDate value="${record.returnTime}" pattern="yyyy-MM-dd" /></td>
				<td><a href="recordDetail?productId=${record.id}">詳細</a></td>
				<td><a href="deleteRecord?orderId=${record.id}">削除</a></td>
		</tr>
		</c:forEach>
	</table>
	</c:if>
	
	</div>
	</div>
	
	<c:if test="${rentalList.size()==0}">
	<p>レンタルに行きましょう</p>
	</c:if>
	<p>${errorMessage}</p>

<p>
	<a href="mypage">マイページへ</a>
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