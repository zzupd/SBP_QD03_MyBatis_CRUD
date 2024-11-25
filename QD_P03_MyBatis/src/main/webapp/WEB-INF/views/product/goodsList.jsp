<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>상품 목록</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="listWrap">
		<header id="header" class="dFlex">
			<h1>상품 목록</h1>
			<nav id="gnb">
				<ul id="mainMenu" class="dFlex">
					<li><a href="/list">목록 보기</a></li>
					<li><a href="/reg">등록하기</a></li>
				</ul>
			</nav>
		</header>
		
		<main id="main">
			<div id="colHeaderRow" class="colWidth dFlex">
				<span>
					<input type="checkbox" id="chkAll">
				</span>
				<span>번호</span>
				<span>상품명</span>
				<span>상품코드</span>
				<span>가격</span>
				<span>재고</span>
				<span>등록시간</span>
			</div>
			
			<c:forEach var="listData" items="${listData}"> 
			<div class="colWidth dFlex dataRow">
				<span>
					<input type="checkbox" class="chkRem" name="chkRem"
					 value="${listData.num }" form="delForm">
				</span>
				<span>${listData.num }</span>
				<span>${listData.goodsName }</span>
				<span>${listData.goodsCode }</span>
				<span>
					<fmt:formatNumber value="${listData.price }" pattern="#,### 원" />
				</span>
				<span>${listData.cnt }</span>
				<span>
					<fmt:formatDate value="${listData.regTM }" type="date" />
				</span>
			</div>
			</c:forEach>
			
			
			<div id="listFuncArea" class="dFlex">
				<button type="button" id="delBtn" form="delForm">선택삭제</button>
				
				<div id="searchArea">
					<label>
						<span>상품검색</span>
						<input type="text" name="searchWord" id="searchWord">
						<button type="button" id="searchBtn">검색</button>
					</label>
				</div>
			
			</div>
			
		</main>
		<form action="/del" id="delForm"></form>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    