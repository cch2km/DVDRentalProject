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
<style type="text/css">
</style>
<title>DVD在庫管理</title>
</head>
<body>
<div id="container">
<!--------------- ヘッダー ---------------> 
<div id="header">
	<%@ include file="header.jsp" %>
</div>	
<!-------------------------------------> 
	<h3>DVD在庫管理</h3>
 	<div id="containerDetail4">

			<form:form modelAttribute="productModel">
			<table id="containerDetail4Tbl">
				<tr>
					<th>映画名</th>
					<td><form:input path="product_name" size="55"/> </td>
				</tr>
				<tr>
					<th>タイプ</th>
					<td><form:radiobutton path="type" label="DVD" value="DVD" checked="true" />
					<form:radiobutton path="type" label="CD" value="CD"/></td>
				</tr>
				<tr>
					<th>在庫</th>
					<td><form:input path="account" size="10"/> </td>
				</tr>
				<tr>
					<th>画像</th>
					<td><form:input path="imgurl" size="55"/> </td>
				</tr>
				<tr>
					<th>ジャンル</th>
					<td><form:input path="description" size="10"/> </td>
				</tr>
				<tr>
					<th>監督名</th>
					<td><form:input path="director" size="10"/> </td>
				</tr>
				<tr>
					<th>アーティスト名</th>
					<td><form:input path="director" size="10"/> </td>
				</tr>
				<tr>
					<th>あらずじ／内容</th>
					<td><form:input path="story" size="55" /> </td>
				</tr>
				<tr>
					<td colspan="3" align="center"><input type="submit" value="登録"/></td>
				</tr>
			</table>
			</form:form>
	</div>
			
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>