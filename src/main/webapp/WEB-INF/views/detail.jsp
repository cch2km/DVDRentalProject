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
    
<%--
	<h1>作品詳細</h1>
	<hr /> <!-- フレームワーク208より-->
	<table>
		<c:forEach items="${xList}" var="x" >
		<form:form modelAttribute="xModel">
	  	<tr id="s">
	   		<td>
	    	<img src="img/  " width="330" height="400" alt="  "/><!-- 画像 -->
	   		</td>
	   	</tr>
	 	<tr> <!--　リストが必要です DB product_Id,title,kind,amount,supervision  -->
			<td><c:out value="${x.title}"/></td>
			<td><c:out value="${x.kind}"/></td>
			<td><c:out value="${x.supervision}"/></td>			
			<td>
				<form action="form" method="post">
					<input type="submit" value="カートに入れる"/>
					<input type="hidden" name="itemNo" value="<%= %>"/>
				</form>
	 		</td>
		</tr>
		</form:form>
		</c:forEach>    
 	</table>
--%>
	<div id="containerDetail">
	    <div id="detailImage">
	        <img src="${product.product_imgurl}" width="210" height="300" alt="終わった人">
	    </div>
	    
	    <div id="detailText">
	      <div class="contents">
	            <div class="oldORnew"><c:out value="${product.product_type}" /></div>
	            <h1><c:out value="${product.product_name}" /></h1>
	      </div>
	      <table id="detailTbl">
	            <tr>
	                <th>監督</th>
	                <td>：</td>
	                <td><c:out value="${product.product_director}" /></td>
	            </tr>
	            <tr>
	                <th>アーティスト</th>
	                <td>：</td>
	                <td>＜アーティスト名＞</td>
	             </tr>
	            <tr>
	                <th>ジャンル</th>
	                <td>：</td>
	                <td><c:out value="${product.product_description}" /></td>
	            </tr>
	            <tr>
	                <td colspan="3"><c:out value="${product.product_story}" /></td>
	            </tr>
	      </table>
	  </div>
	</div>
	<div id="inCart">
	    <h3 align="center"><a href="cart"><img src="${pageContext.request.contextPath}/resources/images/btn_cart.jpg" alt="お試しプラン" width="300" height="60"/></a></h3>
	</div>

	<!-------------- フッター ---------------> 
    <div id="footer">
    	<%@ include file="footer.jsp" %>
    </div>
</div>
</body>
</html>