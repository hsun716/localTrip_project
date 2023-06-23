function loginForm_check(){
	const id = document.getElementById("id");
	const pw = document.getElementById("pw");
	
	if(id.value == ""){				//id를 입력하지 않았을 경우
		alert("아이디를 입력하세요.");
		id.focus();
		return false;
	}
		
	if(pw.value == ""){				//pw를 입력하지 않았을 경우
		alert("비밀번호를 입력하세요.");
		id.focus();
		return false;
	}
	//입력값 전송
	document.loginForm.submit();
}