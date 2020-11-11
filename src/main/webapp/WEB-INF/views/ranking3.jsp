<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<div id="ranking">
	<table id="rankingTbl" border="0" cellspacing="0" cellpadding="0">
		<tbody>
	    <tr>
	    	<th id="ranking th"><img src="${pageContext.request.contextPath}/resources/images/rank1.gif" width="30" height="30" alt="１位"></th>
			<td><a href="dirSearch?dir=sutxibunnsupiruba-gu">スティーブン・スピルバーグ</a></td>
		 </tr>
		<tr>
	        <th id="center"><img src="${pageContext.request.contextPath}/resources/images/rank2.gif" width="30" height="30" alt="２位"></th>
	       <td><a href="dirSearch?dir=piterjakusonn">ピーター・ジャクソン</a></td>
		</tr>
		<tr>
	        <th class="center"><img src="${pageContext.request.contextPath}/resources/images/rank3.gif" width="30" height="30" alt="３位"></th>
	        <td><a href="dirSearch?dir=kurisukoronnbasu">クリス・コロンバス</a></td>
		</tr>
		<tr>
	        <th class="center">４位</th>
	        <td><a href="dirSearch?dir=kurisutofa-norann">クリストファー・ノーラン</a></td>
		</tr>
		<tr>
	        <th class="center">５位</th>
	      <td><a href="dirSearch?dir=fukuda">福田雄一</a></td>
		</tr>
		<tr>
	        <th class="center">６位</th>
	        <td><a href="ootomo">大友啓史</a></td>
		</tr>
		<tr>
	        <th class="center">７位</th>
	        <td><a href="dirSearch?dir=miyazakihayao">宮崎駿</a></td>
		</tr>
		<tr>
	        <th class="center">８位</th>
	        <td><a href="dirSearch?dir=kanekosyunsuke">金子修介</a></td>
		</tr>
		<tr>
	        <th class="center">９位</th>
	        <td><a href="dirSearch?dir=nagasakikennzi">長崎健司</a></td>
		</tr>
		<tr>
	        <th class="center">10位</th>
	       <td><a href="dirSearch?dir=russokyoudai">ルッソ兄弟</a></td>
		</tr>
	    </tbody>
	</table>
</div>
</body>
</html>
