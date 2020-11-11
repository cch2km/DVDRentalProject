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
<title>お問い合わせ</title>
</head>
<body>
<div id="container">
	<!--------------- ヘッダー ---------------> 
    <div id="header">
    	<%@ include file="header.jsp" %>
    </div>
    
    
 		<h3>完了完了完了完了完了完了</h3>
		<!--==========　お問い合わせフォーム　==========-->
		<form action="mailto:test@kenschool.jp" method="post">
		<table id="containerDetail3Tbl">
			<tr>
				<td colspan="2" class="bikou">お預かりするお客様の個人情報は、弊社『個人情報保護管理規定』に基づいて厳重に管理し、お客様の同意がない限りお問い合わせ・ご相談への対応以外には使用いたしません。<br/>フォームでお問い合わせ頂いたお客様には、基本的には送信メールにて回答させていただいております。</td>
			</tr>
			<tr>
				<th>お名前</th>
				<td><input type="text" name="name" size="40"/></td>
			</tr>
			<tr>
				<th>フリガナ<br/>(全角カナ)</th>
				<td><input type="text" name="kana" size="40"/></td>
			</tr>
			<tr>
				<th>年齢／性別</th>
				<td><input type="text" name="age" size="5"/>歳
	            	<input type="radio" name="gender" value="man"/>男
	            	<input type="radio" name="gender" value="woman"/>女
	            </td>
			</tr>
			<tr>
				<th>郵便番号</th>
				<td><input type="text" name="zipcode1" size="3"/>-<input type="text" name="zipcode2" size="4"/></td>
			</tr>
			<tr>
				<th>お住まい地域</th>
				<td>
	            	<select name="ken">
	                	<option value="">お選びください</option>
	                	<option value="1">北海道</option>
	                	<option value="2">青森県</option>
	                	<option value="3">秋田県</option>
	                	<option value="4">岩手県</option>
	                	<option value="5">東京都</option>
	                	<option value="6">神奈川県</option>
	                </select>
	            </td>
			</tr>
			<tr>
				<th>ご住所</th>
				<td><input type="text" name="address" size="60"/></td>
			</tr>
			<tr>
				<th>電話番号</th>
				<td><input type="text" name="tel" size="20"/></td>
			</tr>
			<tr>
				<th>お問い合わせ種類</th>
				<td><input type="checkbox" name="kind" value="1"/>商品に関するお問い合わせ
	            	<input type="checkbox" name="kind" value="2"/>取扱いに関するお問い合わせ
	                <input type="checkbox" name="kind" value="3"/>その他
	            </td>
			</tr>
			<tr>
				<th>お問い合わせ内容</th>
				<td><textarea rows="6" cols="60" name="inquiry"></textarea></td>
			</tr>
		</table>
		<input type="submit" value="送信"/>
		</form>


	<!-------------- フッター ---------------> 
    <div id="footer">
    	<%@ include file="footer.jsp" %>
    </div>
</div>
</body>
</html>