<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>退会</title>
</head>
<body>
		<h1>退会</h1>
<hr/>
<p><a href="index">トップページへ戻る</a></p>
<hr />
<p>退会よろしいでしょうか。</p>
<form:form modelAttribute="userModel">
	<table>
	
	<tr>
		<td>会員ID</td>
		<td>
			<c:out value="${userModel.user_Id}"/>
			<input type="hidden" value="${userModel.user_Id}"name="user_Id"/>
		</td>
	</tr>
	
	<tr>
		<td>名前</td>
		<td><c:out value="${userModel.name}"/></td>
	</tr>
	
	<tr>
		<td>フリガナ</td>
			<td><c:out value="${userModel.kana}"/> </td>
		
	</tr>
	
	<tr>
		<td>生年月日</td>
			<td><c:out value="${userModel.birth}"/> </td>
		
    </tr>
		
	<tr>
		<td>性別</td>
		<td><c:out value="${userModel.gender}"/> </td>
		
	</tr>
	
	<tr>
		<td>携帯番号</td>
		<td><c:out value="${userModel.phone}"/> </td>
		
	</tr>
		
	<tr>
		<td>メールアドレス</td>
		<td><c:out value="${userModel.email}"/> </td>
	
		
	</tr>
	
	<tr>
		<td>郵便番号</td>
		<td><c:out value="${userModel.zip}"/> </td>
	</tr>
	
	<tr>
		<td>住所</td>
		<td><c:out value="${userModel.address}"/> </td>
		
	</tr>
	<tr>
		<td colspan="3">
		<input type="submit" value="退会"/>
		
		</td>
	</tr>
	
	
	</table>
	</form:form>
</body>
</html>
	