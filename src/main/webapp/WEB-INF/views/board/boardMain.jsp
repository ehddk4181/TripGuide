<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ���</title>
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
				error : function(){alert("����")}
			})
		}
	})
</script>
</head>
<body>

	<!-- ����� ��� ���� -->
	<div class="a">
	
	
	<!-- ��� -->
	<div class="b">
		<h2>[ �ӽ� �Խ��� ]</h2>
		<hr>
		<input type="button" id="btn1" value="selectAll">
		<table>
			<tr>
				<td>�Խ��� ��ȣ</td>
				<td>����</td>
				<td>�Խ��� ���� ����</td>
				<td>�Խ��� ����</td>
				<td>�����</td>
				<td>�Խ��� ���� </td>
				<td>�Խ��� ����</td>
				<td>�Խ��� ��ġ</td>
			</tr>
		</table>
	</div>
	
	
	<div>
		<table id="list"></table>
	</div>
	</div>
	
</body>
</html>