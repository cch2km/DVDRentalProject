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
<title>詳細情報</title>
</head>
<body>
<div id="container">
	<!--------------- ヘッダー ---------------> 
    <div id="header">
    	<%@ include file="header.jsp" %>
    </div>


<div align="center">
	<h3>カート内容</h3>
	<p class="error">${errorMessage}</p>
	<form:errors path="*" elemnet="div" cssClass="error" />
	
		<table id="detailTbl3" border="1">
			<tr>
				<th>タイトル</th>
				<th>ジャンル</th>
				<th>映画監督</th>
				<th>在庫</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach var="emp" items="${changeEmployeesList}">
			<form:form modelAttribute="employeesModel">
			<tr>
				<td width="150"><c:out value="${データベース_タイトル名}" /></td>
				<td width="150"><c:out value="${データベース_ジャンル名}" /></td>
				<td width="150"><c:out value="${データベース_映画監督名}" /></td>
				<td width="40"><c:out value="${データベース_在庫数}" /></td>
				<td width="40" align="center"><a href="delete?paramId=${emp.employee_id}">削除</a></td>
			</tr>
			</form:form>
			</c:forEach>
		</table>
    <p><input type="submit" value="決定" /></p>

	<p><a href="index">トップーへ戻る</a></p>
</div>

	<!-------------- フッター ---------------> 
    <div id="footer">
    	<%@ include file="footer.jsp" %>
    </div>
</div>
</body>
</html>