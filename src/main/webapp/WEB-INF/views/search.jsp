<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hf.css"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>searchpage</title>
<link rel="stylesheet" href="css/check.css">
<script type="text/javascript">

var genre = [
		["邦画","洋画","ドラマ","ホラー","お笑い","アニメ"],
		["J-POP","アニソン","洋楽","キッズ","ロック＆ポップス"],
		["少年コミック","少女コミック","青年コミック","キッズ"]
];

function setGenre(genre1, genre2){
	var len = genre2.length;
	for(var i = 0; i < len; i++){
		genre2.options[0] = null;
	}
	var n = genre1.selectedIndex;
	for(var i = 0; i < genre[n].length; i++){
		genre2.options[i] = new Option(genre[n][i],genre[n][i]);
	}
}
</script>
<title>選択項目の内容を変更</title>
</head>
<body onload="setGenre(document.fm.genre1, document.fm.genre2);">
<div id="container">
	<!--------------- ヘッダー ---------------> 
    <div id="header">
    	<%@ include file="header.jsp" %>
    </div>

	<div id="wrap">
		<h1>商品検索</h1>
	    <br/>
	    <h3>キーワードで検索</h3>
		    <input type="search"  autocomplete="on" list="list">
			<input type="submit" value="検索"  />
	    <h3>ジャンルで検索</h3>
			<form name="fm">
				<table border="1">
				<tr>
					<td>ジャンル：
						<select name="genre1" onchange="setGenre(document.fm.genre1, document.fm.genre2);">
							<option value="ＤＶＤ">ＤＶＤ</option>
							<option value="ＣＤ">ＣＤ</option>
							<option value="本">本</option>
						</select>
					</td>
					<td>
						<select name="genre2">
						</select>
		                <input type="submit" value="検索"  />
					</td>
				</tr>
				</table>
			</form>
	</div>

	<!-------------- フッター ---------------> 
    <div id="footer">
    	<%@ include file="footer.jsp" %>
    </div>    
</div>
</body>
</html>