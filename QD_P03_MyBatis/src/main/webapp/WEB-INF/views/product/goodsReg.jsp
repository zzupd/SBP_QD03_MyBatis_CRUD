<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<header id="header" class="dFlex">
			<h1>상품 등록</h1>
			<nav id="gnb">
				<ul id="mainMenu" class="dFlex">
					<li><a href="/list">목록 보기</a></li>
					<li><a href="/reg">등록하기</a></li>
				</ul>
			</nav>
		</header>
		
		<main id="main">
			<form action="/regProc">
				<div class="insItem">
					<label class="dFlex">
						<span class="required">상품명</span>
						<input type="text" name="goodsName" required>
					</label>
				</div>
				<div class="insItem">
					<label class="dFlex">
						<span class="required">상품코드</span>
						<input type="text" name="goodsCode" required>
					</label>
				</div>
				<div class="insItem">
					<label class="dFlex">
						<span>가격</span>
						<input type="text" name="price">
					</label>
				</div>
				<div class="insItem">
					<label class="dFlex">
						<span class="required">재고</span>
						<input type="text" name="cnt" required>
					</label>
				</div>
				
				<div id="btnArea">
					<span>(* 필수)</span>
					<button>등록</button>
					<button type="reset">초기화</button>
				</div>
			
			</form>
		</main>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    