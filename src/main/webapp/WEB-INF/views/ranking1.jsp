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
			<td><a href="pNameSearch?ename=avenjar">アベンジャーズエンドゲーム</a></td>
		 </tr>
		<tr>
	        <th id="center"><img src="${pageContext.request.contextPath}/resources/images/rank2.gif" width="30" height="30" alt="２位"></th>
	        <td><a href="pNameSearch?ename=hiroaka">僕のヒーローアカデミア劇場版</a></td>
		</tr>
		<tr>
	        <th class="center"><img src="${pageContext.request.contextPath}/resources/images/rank3.gif" width="30" height="30" alt="３位"></th>
	        <td><a href="pNameSearch?ename=haripotter1">ハリー・ポッターと賢者の石</a></td>
		</tr>
		<tr>
	        <th class="center">４位</th>
	        <td><a href="pNameSearch?ename=imai">今会いにいきます</a></td>
		</tr>
		<tr>
	        <th class="center">５位</th>
	       <td><a href="pNameSearch?ename=owattahito">終わった人</a></td>
		</tr>
		<tr>
	        <th class="center">６位</th>
	       <td><a href="pNameSearch?ename=totoro">トトロ</a></td>
		</tr>
		<tr>
	        <th class="center">７位</th>
	        <td><a href="pNameSearch?ename=dark knightrizing">ダークナイトライジング</a></td>
		</tr>
		<tr>
	        <th class="center">８位</th>
	       <td><a href="pNameSearch?ename=rurounikennsinn">るろうに剣心</a></td>
		</tr>
		<tr>
	        <th class="center">９位</th>
	     <td><a href="pNameSearch?ename=hobitto1">ホビット　思いがけない冒険</a></td>
		</tr>
		<tr>
	        <th class="center">10位</th>
	       <td><a href="pNameSearch?ename=syourinn">少林サッカー</a></td>
		</tr>
	    </tbody>
	</table>
</div>
</body>
</html>
