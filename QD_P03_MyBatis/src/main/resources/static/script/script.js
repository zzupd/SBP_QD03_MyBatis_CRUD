$(function(){
	
	// 삭제용 체크박스 전체 선택/해제
	$("#chkAll").click(function(){
		let chkVal = $(this).prop("checked");
		$(".chkRem").prop("checked", chkVal);
	});
	
	// 선택삭제 실행 시작
	$("#delBtn").click(function(){
		let chk = confirm("선택한 항목을 삭제하시겠습니까?");
		if(chk) {
			$("form#delForm").submit();
		} else {
			alert("사용자가 취소하셨습니다.");
		}
	});
	
	// 상품 검색
	$("#searchBtn").click(function(){
		
		let searchWord = $("#searchWord").val().trim();
		location.href="/search?searchWord="+searchWord;
		
	});
	
	
	
	
});