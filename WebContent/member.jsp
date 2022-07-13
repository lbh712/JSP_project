<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	label {
	width :160px;
	display:inline-block;
	float : left;
	}
	
	#button{
	text-align:center;
	}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type = "text/javascript">
	/* function check_ok() {
		if (document.frm.name.value == 0) {
			alert("이름을 입력해주세요");
			document.frm.name.focus();
			return false;
		}
		if (document.frm.rsm1.value != 6) {
			alert("주민번호 6글자를 입력해주세요.");
			document.frm.rsm1.focus();
			return false;
		}
		if (document.frm.rsm2.value != 7) {
			alert("주민번호 7글자를 입력해주세요.");
			document.frm.rsm2.focus();
			return false;
		}
		if (document.frm.id.value == 0){
			alert("아이디를 입력해주세요.");
			document.frm.id.focus();
			return false;
		}
		if (document.frm.pw.value == 0){
			alert("패스워드를 입력해주세요.");
			document.frm.pw.focus();
			return false;
		}
		if (document.frm.pw.value!== document.form.pwchk.value){
			alert("패스워드가 일치하지 않습니다.");
			document.frm.pwchk.focus();
			return false;
		} */
		/////////////////////////////////////////////////////////////
		
	
	function check_ok() {
		if ($("#name").val() == "") {
			alert("이름을 입력해주세요.");
			$("name").focus();
			return false;
		}
		if ($("#rsm1").val() == "") {
			alert("주민번호 앞자리는 6자리 숫자로 입력해주세요.")
			$("rsm1").focus();
			return false;
		}
		if ($("#rsm2").val() == "") {
			alert("주민번호 뒷자리는 7자리 숫자로 입력해주세요.")
			$("rsm2").focus();
			return false;
		}
		if ($("#id").val() == "") {
			alert("아이디를 입력해주세요.")
			$("id").focus();
			return false;
		}
		if ($("#pw").val() == "") {
			alert("비밀번호를 입력해주세요.");
			$("pw").focus();
			return false;
		}
		if ($("#pwchk").val() == "") {
			alert("비밀번호 확인란을  입력해주세요.");
			$("pwchk").focus();
			return false;
		}
		if ($("#pwchk").val() != $("#pw").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			$("pwchk").value = "";
			$("pwchk").focus();
			return false;
		}
		if ($("#email").val() == "") {
			alert("이메일을 입력해주세요.");
			$("email").focus();
			return false;
		}
		if ($("#post").val() == "") {
			alert("우편번호를  입력해주세요.");
			$("post").focus();
			return false;
		}
		if ($("#addr1").val() == "") {
			alert("주소1을 입력해주세요.");
			$("addr").focus();
			return false;
		}
		if ($("#addr2").val() == "") {
			alert("주소 2를 입력해주세요.");
			$("addr2").focus();
			return false;
		}
		if ($("#mobile1").val() == "") {
			alert("핸드폰번호(1)을  입력해주세요.");
			$("mobile1").focus();
			return false;
		}
		if ($("#mobile2").val() == "") {
			alert("핸드폰번호(2)를  입력해주세요.");
			$("mobile2").focus();
			return false;
		}
		if ($("#mobile3").val() == "") {
			alert("핸드폰번호(3)을  입력해주세요.");
			$("mobile3").focus();
			return false;
		}
		if ($("#job").val() == "") {
			alert("직업을 선택해주세요.");
			$("job").focus();
			return false;
		}

	}
</script>

</head>
<body>

 	<form onsubmit="return check_ok()" method="get" action="MemberServlet">
 		<label for="name">이름 </label>
 		<input type ="text" name="name" id="name"><br>
 		
 		<label for="rsm">주민등록번호 </label>
 		<input type ="text" name="rsm1" id="rsm1">
 		- <input type ="text" name="rsm2" id="rsm2"><br>
 		
 		<label for="id">아이디 </label>
 		<input type ="text" name="id" id="id"><br>
 		
 		<label for="pw">비밀번호 </label>
 		<input type ="text" name="pw" id="pw"><br>
 		
 		<label for="pwchk">비밀번호 확인 </label>
 		<input type ="text" name="pwchk" id="pwchk"><br>
 		
 		
 		  <label for="email">이메일 </label>
      <input type="text" name="email" id="email"> @ <input type="text" name="email_dns" value=""> 
      <select name="emailaddr">
         <option value="" selected="selected">직접입력</option>
           <option value="naver.com">naver.com</option>
           <option value="gmail.com">gmail.com</option>
           <option value="hanmail.net">hanmail.net</option>
           <option value="nate.com">nate.com</option> 
           <option value="daum.net">daum.net</option>
           <option value="empal.com">empas.com</option>
           <option value="msn.com">msn.com</option>
      </select>
      <br>

		<label for="post">우편번호  </label>
 		<input type ="text" name="post" id="post"><br>
 		
 		<label for="addr">주소 </label>
 		<input type ="text" name="addr1" id="addr1"> <input type ="text" name="addr2" id="addr2"><br>
 		
 		<label for="mobile">핸드폰번호 </label>
 		<input type ="text" name="mobile1" id="mobile1">
 		-<input type ="text" name="mobile2" id="mobile2">
 		-<input type ="text" name="mobile3" id="mobile3"><br>
 		
 		<label for="job">직업</label>
 		<select id="job" name="job" size="1">
 			<option value="" >선택하세요</option>
			<option value="학생" >학생</option>
			<option value="기자" >기자</option>
			<option value="교사" >교사</option>
			<option value="엔지니어" >엔지니어</option>
			<option value="군인" >군인</option>
		</select>
		<br>
 		
 		<label for="chk_mail"> 메일/SMS 정보 수신 </label> 
		<input type="radio" id="chk_mail" name="chk_mail" value="yes"> 수신 
		<input type="radio" id="chk_mail" name="chk_mail" value="no"> 수신거부
		<br>
				
		<label for="item"> 관심 분야 </label>
		<input type="checkbox" name="interest" value="생두"> 생두 
		<input type="checkbox" name="interest" value="원두"> 원두
		<input type="checkbox" name="interest" value="로스팅"> 로스팅 
		<input type="checkbox" name="interest" value="핸드드립"> 핸드드립
		<input type="checkbox" name="interest" value="에스프레소"> 에스프레소
		<input type="checkbox" name="interest" value="창업"> 창업
		<br><br>
		
		<div id="button">
		<!-- <input type="submit" value="회원가입" onclick="return check_ok()"> -->
		<input type="submit" value="회원가입">
		<input type="reset" value="취소">
		</div>

 	</form>
</body>
</html>