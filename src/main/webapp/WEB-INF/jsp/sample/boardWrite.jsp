<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>Insert title here</title>
</head>
<body>
	<form id="frm" method="post">
		<table class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*" />
			</colgroup>
			<caption>게시글 작성</caption>
			<tbody>
				<tr>
					<th scope="row">제목</th>
					<td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="view_text">
						<textarea rows="20" cols="100" title="내용" id="CONTENTS" name="CONTENTS"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		
		<a href="#this" class="btn" id="write">작성하기</a>
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
/*   	console.log("load1"); */
		$(document).ready(function(){
			$("#list").on("click", function(e){
				e.preventDefault();
				fn_openBoardList();
			});
/* 			console.log("load2"); */
			$("#write").on("click", function(e){
				console.log("load3");
				/* debugger; */
				e.preventDefault();
				fn_insertBoard();
			});
		}); 
		 
			
		
		function fn_openBoardList(){
			var comSubmit = new ComSubmit();
/* 			comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />"); */
			comSubmit.setUrl("/board_dev/sample/openBoardList.do");
			comSubmit.submit();
			
		};
		
		function fn_insertBoard(){
			var comSubmit = new ComSubmit("frm");
/* 			comSubmit.setUrl("<c:url value='/sample/insertBoard.do' />"); */
			comSubmit.setUrl("/board_dev/sample/insertBoard.do");
			comSubmit.submit();
		};
	</script>
</body>
</html>