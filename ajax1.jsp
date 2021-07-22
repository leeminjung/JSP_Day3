<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax</title> //ajax : 페이지를 이동하지않고 데이터를 뒷단으로 받아 처리후 화면에 보이게 함
</head>
<body>
	<h2>Ajax</h2>
	<button onclick ="sendRequest()">요청보내기</button>
	<p id="text"></p>                                   <!-- 서버에서 전달된 메세지가 p태그 안에 써짐. -->
	
	<script>
		'use strict';
		function sendRequest(){
			const xhr = new XMLHttpRequest(); //-> 객체를 만들면 프로퍼티값이 0
			xhr.open('GET', 'ajax1_ok.jsp?userid=apple&userpw=1111', true);//데이터를 전달  , open메소드하면 프로퍼티값이 1,true:비동기
			xhr.send(); //화면이 바뀌지 않고, 내화면을 그대로 보고있으면서 뒷단으로 통신을 하게됨.
			
			// XMLHttpRequest.DONE : 4(완료), xhr.status : 200(정상적인 페이지 접근)
			xhr.onreadystatechange = function(){ //프로퍼티의 값이 변경될때마다 함수가 자동으로 호출됨.
				if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){ //페이지가 처리가 완료되었고: XMLHttpErquest.DONE / 페이지 접속했는데 200번이고:xhr.status==200. 라는 뜻
					document.getElementById('text').innerHTML = xhr.responseText; //서버에서 전달된 메세지가 무조건 xhr.responseText로 옴. 데이터를 가져옴!(여기선 userid, userpw 가져옴)
					
				}
			}
		}
	</script>

</body>
</html>