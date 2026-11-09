/**
 * 
 */

function testCheck() {
	var f = document.testForm;
	
	//이름을 한글만 입력 가능하게 정규식
	var regExpName = /^[가-힣]+$/; //한글 입력
	
	//아이디는 영문 대문자 시작 특수문자 반드시 1자 이상 포함 정규식
	var regExpId = /^(?=.*[!@#$%^&*])[A-Z][A-Za-z0-9!@#$%^&*]+$/;

	//비밀번호 정규식
	var regExpPw = /^(?=.*[!@#$%^&*])[A-Z](?!.*([A-Za-z])\1)[A-Za-z0-9!@#$%^&*]{6,}$/;
	
	if(!regExpId.test(f.mid.value)) {
		alert("아이디는 대문자로 시작하고 특수문자가 1개 이상 포함되어야 합니다!");
		return false;
	}
	
	if(!regExpPw.test(f.mpw.value)) {
		alert("비밀번호는 대문자로 시작하고 특수문자가 1개 이상 포함되어야 합니다!");
		return false;
	}
	
	//이름이 한글을 제외한 문자가 입력되었을때 참 판정
	if(!regExpName.test(f.mname.value)) {
		alert("이름은 한글만 입력 가능합니다.");
		return false;
	}
	
}

