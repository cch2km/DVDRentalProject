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
<title>マイページ | お客様情報 | 変更</title>
</head>
<body>
<div id="container">
<!--------------- ヘッダー ---------------> 
<div id="header">
	<%@ include file="header.jsp" %>
</div>	
<!-------------------------------------> 
	<h3>お客様情報 | 変更</h3>
	<div align="center">

		<form:form modelAttribute="userModel">
		<table id="containerDetail4Tbl">
			<tr>
				<th>会員ID</th>
				<td>
					<c:out value="${userModel.user_Id}"/>
					<input type="hidden" value="${userModel.user_Id}" name="user_Id"/>
				</td>
			</tr>
			<tr>
				<th>名前</th>
				<td>
					<form:input class="textbox" path="name" size="50"/>
					<form:errors path="name" element="div" cssClass="error"/> 
				</td>
				
			</tr>
			<tr>
				<th>フリガナ</th>
				<td>
					<form:input class="textbox" path="kana" size="50"/>
					<form:errors path="kana" element="div" cssClass="error"/> 
				</td>
				
			</tr>
			<tr>
				<th>パスワード</th>
				<td>
					<form:input class="textbox" path="password" size="50"/> 
					<form:errors path="password" element="div" cssClass="error"/> 
				</td>
			</tr>
			<tr>
				<th>生年月日</th>
				<td>
					<c:out value="${userModel.birth}"/>
					<input type="hidden" value="${userModel.birth}" name="birth"/>
				</td>
		   </tr>
			<tr>
				<th>性別</th>
				<td>
					<c:out value="${userModel.gender}"/>
					<input type="hidden" value="${userModel.gender}" name="gender"/>
				</td>
		    </tr>
			<tr>
				<th>携帯番号</th>
				<td>
					<form:input class="textbox" path="phone" size="20"/>
					<form:errors path="phone" element="div" cssClass="error"/> 
				</td>
			</tr>
			<tr>
				<th>メールアドレス</th>
				<td>
					<form:input class="textbox" path="email" size="10"/>
					<form:errors path="email" element="div" cssClass="error"/> 
				</td>
			</tr>
			<tr>
				<th>郵便番号</th>
				<td>
					<form:input class="textbox" path="zip" size="10"/>
					<form:errors path="zip" element="div" cssClass="error"/> 
				</td>
			</tr>
			<tr>
				<th>住所</th>
				<td>
					<form:input class="textbox" path="address" size="50"/>
					<form:errors path="address" element="div" cssClass="error"/> 
				</td>
			</tr>
			<tr>
			
				<th colspan="3">
					<div align="center">
						<input class="submit" type="submit" value="変更" name="edit"/>
					</div>
				</th>
			</tr>
		</table>
	</form:form>
      <p>${errorMessage}</p>
	</div>
	<br />
	<p><a class="radiobutton" href="index">トップページへ戻る</a></p>
	<p><a class="radiobutton" href="carRecord" class="menu">レンタル履歴</a></p>
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>