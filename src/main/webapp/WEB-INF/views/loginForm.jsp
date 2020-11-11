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
<title>ログイン</title>
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
			<img src="${pageContext.request.contextPath}/resources/images/icon_login.gif" alt="login" width="60" height="40" />
		</div>
		<div id="detail_right">
			ログイン
		</div>
	</div>
</div>
	
	<form:form modelAttribute="userModel">
	<div class="error">${errorMessage}</div>
	<table id="containerDetail5Tbl">
	<tr>
		<th>メールアドレス</th>
		<td><form:input class="textbox" path="email" size="24"/><form:errors path="email" element="div" cssClass="error"/></td>
		<td rowspan="2" style="border: none; width:50px;"><input class="login" type="submit" value="ログイン"/></td>
	</tr>
	<tr>
		<th>パスワード</th>
		<td><form:password class="textbox" path="password" size="25"/><form:errors path="password" element="div" cssClass="error"/></td>
	</tr>
	</table>
	<a class="radiobutton" href="regist">新規登録</a>
	</form:form>
	
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>