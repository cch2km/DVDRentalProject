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
<title>新規会員登録</title>
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
			<img src="${pageContext.request.contextPath}/resources/images/icon_new.gif" alt="new" width="60" height="40" />
		</div>
		<div id="detail_right">
			新規入会
		</div>
	</div>
</div>
	
	<form:form modelAttribute="userModel">
	<table id="containerDetail4Tbl">
	<tr>
		<th width="250">名前</th>
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
			<span>
			※8文字以上20文字以下でご入力ください。&nbsp;&nbsp;&nbsp;※英字と数字を組み合わせて下さい。
			</span>
			<form:password class="textbox" path="password" size="51"/>
			<form:errors path="password" element="div" cssClass="error"/>
		</td>
	</tr>
	<tr>
		<th>生年月日</th>
		<td>
			<form:input class="textbox" path="birth" size="50"/>
			<form:errors path="birth" element="div" cssClass="error"/> 
		</td>
   </tr>
		
	<tr>
		<th>性別</th>
		<td>
			<form:radiobutton class="textbox" path="gender" label="男" value="男" checked="true"/>
			<form:radiobutton class="textbox" path="gender" label="女" value="女" />
		</td>
</tr>
	<tr>
		<th>携帯番号</th>
		<td>
			<form:input class="textbox" path="phone" size="30"/>
			<form:errors path="phone" element="div" cssClass="error"/> 
		</td>
	</tr>
	<tr>
		<th>メールアドレス</th>
		<td>
			<form:input class="textbox" path="email" size="50"/>
			<form:errors path="email" element="div" cssClass="error"/> </td>
	</tr>
	<tr>
		<th>郵便番号</th>
		<td>
			<form:input class="textbox" path="zip" size="30"/>
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
		<th>プラン</th>
		<td>
			<form:select class="textbox" path="plan">
				<option value="お試しプラン" selected="selected">お試しプラン</option>
				<option value="Bronzeプラン" >Bronzeプラン</option>
				<option value="Silverプラン" >Silverプラン</option>
				<option value="Goldプラン" >Goldプラン</option>
			</form:select>
			<!--
			<form:errors path="address" element="div" cssClass="error"/> 
			-->
		</td>
	</tr>
	</table>
	<input class="submit" type="submit" value="登録" />
	<input type="hidden" value="20" name="point" />
	</form:form>
	 <!--  <p class="error">${errorMessage}</p>  -->

<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>