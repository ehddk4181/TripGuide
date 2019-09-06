<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판</title>
<script src="/project/resources/js/jquery-3.4.1.js"></script>
<script>
	$(function(){
		
		$("#btn1").on("click", function(){
			selectAll();
		})
		
		function selectAll(){
			$.ajax({
				url: "/project/board/selectAll",
				type: "post",
				dataType: "json",
				success: function(result){
					$("#tables").empty();
					$(reslut).each(function(index, item){
						$("tables").append('<tr id='+item.boardNum+'><b>'+
								'<td>'+item.memberId+'</td>'+
								'<td>'+item.boardDeleted+'</td>'+
								'<td>'+item.boardType+'</td>'+
								'<td>'+item.boardDate+'</td>'+
								'<td>'+item.boardTitle+'</td>'+
								'<td>'+item.boardView+'</td>'+
								'<td>'+item.boardLocation+'</td>'+
								'</b></tr><br>')
					});
				},
				error : function(){alert("실패")}
			})
		}
	})
</script>
</head>
<body>

	<!-- 디비전 가운데 정렬 -->
	<div class="a">
	
	
	<!-- 출력 -->
	<div class="b">
		<h2>[ 임시 게시판 ]</h2>
		<hr>
		<input type="button" id="btn1" value="selectAll">
		<table>
			<tr>
				<td>게시판 번호</td>
				<td>유저</td>
				<td>게시판 삭제 여부</td>
				<td>게시판 종류</td>
				<td>등록일</td>
				<td>게시판 제목 </td>
				<td>게시판 내용</td>
				<td>게시판 위치</td>
			</tr>
		</table>
	</div>
	
	
	<div>
		<table id="list"></table>
	</div>
	</div>
	
</body>
</html>