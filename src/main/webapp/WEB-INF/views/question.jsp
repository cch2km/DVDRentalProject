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
<title>よくある質問</title>
</head>
<body>
<div id="container">
	<!--------------- ヘッダー ---------------> 
    <div id="header">
    	<%@ include file="header.jsp" %>
    </div>
    
	<div id="containerDetail2">
 		<h3>よくある質問</h3>

		<table border="1">
		<tr><th><br />
		<table id="detailTbl3" >
			<tr>
				<th>Q．</th>
				<td><span>どんなサービスですか？</span></td>
			</tr>
			<tr>
				<th>A．</th>
				<td>ウェブサイトから注文したディスクが、指定の宛先まで届くオンサインレンタルサービスです。<br />
					<br />
					会員登録を行ったユーザーは、サイト内で紹介されているディスクの中からレンタルしたいディスクを注文すると、数日内に郵送でディスクを受け取ることができます。<br />
					<br />
					お支払いは、振込のみです。 ９時に弊社が振込確認に行き、確認ができた時点でレンタル可能となります。<br />
					<br />
					一度に最大３枚までで、借りたセットで返却してください。<br />
					全て返却されるまで、次回の発送はできません。<br />
					在庫がないものは、レンタル可能ですが、入荷後別発送。<br />
					<br />
					プランは全部で３プラン、<br />
					Bronzeプラン【月額1050円（税込）】は、月６枚までレンタル可能<br />
					Silverプラン【月額2100円（税込）】は、月12枚までレンタル可能<br />
					Goldプラン【月額5250円（税込）】は、枚数無制限でレンタル可能
					
				</td>
			</tr>
			<tr>
				<td colspan="2"><hr /></td>
			</tr>
			<tr>
				<th>Q．</th>
				<td><span>会員登録ができないのですが？</span></td>
			</tr>
			<tr>
				<th>A．</th>
				<td>以下の点をご確認ください。<br />
					<br />
					■登録フォームの記入もれはありませんか？<br />
					ご入力内容が適切でない項目には、赤字でエラーメッセージが表示されますので、エラーメッセージが表示されている項目がないかをご確認ください。<br />
					<br />
					■お使いのパソコンの“Cookie”の設定は有効になっていますか？<br />
					宅配レンタルのサイトは、“Cookie”の設定が有効になっていないと会員登録をはじめ、レンタルサービスをご利用いただけません。“Cookie”の設定が有効になっているかどうかをご確認ください。<br />
					<br />
					■過去に宅配レンタルに登録されていたという事はございませんか？<br />
					過去に一度でも宅配レンタルにご登録いただいた事がある場合は、休会解除または再登録手続きをおこなっていただけますようお願いいたします。
				</td>
			</tr>
			<tr>
				<td colspan="2"><hr /></td>
			</tr>
			<tr>
				<th>Q．</th>
				<td><span>会員登録後に、情報を変更したいのですが？</span></td>
			</tr>
			<tr>
				<th>A．</th>
				<td>
				ログインしていただき、「マイページ」の左メニューにある「登録情報変更」から、変更手続きをおこなってください。なお、休会中の方からの登録情報の変更はお受けしておりません。
				</td>
			</tr>
			<tr>
				<td colspan="2"><hr /></td>
			</tr>
			<tr>
				<th>Q．</th>
				<td><span>複数のメールアドレスと登録したいのですが？</span></td>
			</tr>
			<tr>
				<th>A．</th>
				<td>宅配レンタルでは、1アカウントにつき1メールアドレスのみのご登録とさせていただいております。<br />
					1つのアカウントに複数のメールアドレスはご登録いただけません。
				</td>
			</tr>
		</table>
		<br />
		</th></tr>
		</table>
	</div>
	<!-------------- フッター ---------------> 
    <div id="footer">
    	<%@ include file="footer.jsp" %>
    </div>
</div>
</body>
</html>