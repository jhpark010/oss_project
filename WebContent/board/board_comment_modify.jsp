<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
    <br>
    <b><font size="5" color="gray">댓글수정</font></b>
    <hr size="1" width="500">
    <br>
 
    <div>
        <form action="comment_update.board" name="Form">        
        	<input type="hidden" name="comment_num" value="${comment_num}">
            <textarea rows="7" cols="70" name="comment_content"></textarea>
            <br><br>
            <input type="button" value="수정" onclick="check()">
            <input type="button" value="닫기" onclick="window.close()">
        </form>
    </div>
</div>
 
<script>
		function check(){
			if(document.Form.comment_content.value==''){
				alert("내용은 4글자이상 입력해야만 합니다.");
				return;
			}else if(document.Form.comment_content.length < 4){
				alert("내용은 4글자 이상 입력해야만 합니다.");
				return;
			}else if(confirm("댓글 등록을 완료하시겠습니까?")){
				document.Form.submit();
			}
		}
	
	
</script>
</body>
</html>