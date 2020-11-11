<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hf.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/text.css"/>
<html xmlns="http://www.w3.org/1999/xhtml">
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
<!-------------------------------------> 
	
 	<div id="containerDetail">
 	<form:form modelAttribute="productModel">
 	
	    <div id="detailImage">
	        <img src="${productModel.imgurl}" width="210" alt="${productModel.product_name}">
	    </div>
	    
	    <div id="detailText">
	      <div class="contents">
	            <div class="type"><c:out value="${productModel.type}" /></div>
	            <span><c:out value="${productModel.product_name}" /></span>
	      </div>
	      <table id="detailTbl">
	            <tr>
	                <th>監督</th>
	                <td>：</td>
	                <td><c:out value="${productModel.director}" /></td>
	            </tr>
	            <tr>
	                <th>アーティスト</th>
	                <td>：</td>
	                <td><c:out value="${productModel.artist}" /></td>
	             </tr>
	            <tr>
	                <th>ジャンル</th>
	                <td>：</td>
	                <td><c:out value="${productModel.description}" /></td>
	            </tr>
	            <tr>
	                <td colspan="3"><c:out value="${productModel.story}" /></td>
	            </tr>
	      </table>
	  </div>
	</div>
    </form:form>
    <div id="inCart">
	    <h3 align="center"><a href="cart?paramId=${productModel.product_Id}"><img src="${pageContext.request.contextPath}/resources/images/btn_cart.jpg" alt="カードに入れる" width="300" height="60"/></a></h3>
	</div>
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