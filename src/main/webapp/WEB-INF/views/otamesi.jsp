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
<title>プランと料金、ポイントについて</title>
</head>
<body>
<div id="container">
<!--------------- ヘッダー ---------------> 
<div id="header">
	<%@ include file="header.jsp" %>
</div>	
<!-------------------------------------> 
	<div id="main_visual2">
        <img src="${pageContext.request.contextPath}/resources/images/otamesi.gif" alt="お試しプラン"/>
	</div>
    <div id="otamesi">
       	<div id="maintitle2">
	    	<p class="title1">MusicLifeAgency<span>の</span><br class="sp">ネットレンタルサービス<span>なら</span></p>
	        <p class="title2">映画・ドラマ・音楽が盛りたくさん！</p>
	        <p class="title3">お求めやすい<span>お試しプラン</span>なら 初回315円（税込）</p>
	        <p class="title4">プランと料金・ポイントについて</p>
	        <P class="text">
    		    <img src="${pageContext.request.contextPath}/resources/images/star.gif" width="30" height="30" alt="お試しプラン"/>
	        	<b>お試しプラン</b>
    		    <img src="${pageContext.request.contextPath}/resources/images/star.gif" width="30" height="30" alt="お試しプラン"/>
	      		<br/>通常1,000円以上かる料金が…
		  		<span>初めてご利用のお客様限定！！！<br/>お試しプラン　月額315円！！！</span><br/>
				※新規登録月の月末まで限定です。<br/>
				※315円で2枚借りれるプランです。
			</p>
	        <P class="text">
			    <img src="${pageContext.request.contextPath}/resources/images/star.gif" width="30" height="30" alt="お試しプラン"/>
	        	<b>月額プラン一覧</b>
    		    <img src="${pageContext.request.contextPath}/resources/images/star.gif" width="30" height="30" alt="お試しプラン"/>
			 	<br/>月額(１日0:00～末日23:59まで)<br/>
    			<img src="${pageContext.request.contextPath}/resources/images/price.png" alt="price" />
			</p>
	        <P class="text">
    		    <img src="${pageContext.request.contextPath}/resources/images/star.gif" width="30" height="30" alt="お試しプラン"/>
	        	<b>発送・返却について</b>
    		    <img src="${pageContext.request.contextPath}/resources/images/star.gif" width="30" height="30" alt="お試しプラン"/>
			    <br/>
			    <img src="${pageContext.request.contextPath}/resources/images/deli.png" alt="返却" width="600" height="169"/>
				<br/>
				レンタルは１度で３枚までのセットで発送し、発送されたセットで返却してください。<br/>
				レンタルしたセットを返却するまで、次のレンタルはできません。<br/>
				在庫がなくてもレンタルは可能です。在庫がないものについては、入荷後発送となります。<br/>
				その時他のレンタル商品があれば、セットにして発送します。<br/>
				万が一、破損・紛失があった場合は、違約金10,000円を頂戴します。<br/>
				その場合、振込確認ができるまで、レンタルは停止いたします。<br/>
			</p>
	        <P class="text">
    		    <img src="${pageContext.request.contextPath}/resources/images/star.gif" width="30" height="30" alt="お試しプラン"/>
	        	<b>ポイントについて</b>
    		    <img src="${pageContext.request.contextPath}/resources/images/star.gif" width="30" height="30" alt="お試しプラン"/>
			    <br/>
  			    <img src="${pageContext.request.contextPath}/resources/images/point.jpg" alt="point" />
			    <br/>
			    １枚レンタルにつき<strong>１ポイント</strong>（返却時に付与）<br/>
				 発送日から１～２週間以内に返却されたら、ポイント<strong>１倍加算</strong><br/>
				 発送日から１週間以内に返却されたら、ポイント<strong>２倍加算</strong><br/>
				 累計ポイントが<strong>500ポイント</strong>ごとに、月内のレンタルが<strong>１枚増加！</strong><br/>
				累計ポイントが<strong>500ポイント</strong>になった翌月に１枚レンタルが増える！使わない場合は、そのまま継続！<br/>
				<strong>500ポイント</strong>消費で、１枚レンタルできる！<br/>
			</p>
		</div>
	</div>   
	<div id="btn2">
		<h3 align="center"><a href="regist"><img src="${pageContext.request.contextPath}/resources/images/touroku.png" alt="新規登録" width="505" height="68" /></a></h3>
	</div>
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>