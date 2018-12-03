<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/bootstrap.css">
<script src="//code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var option2 = '';
		
		$('#exampleInputPassword2').focusout(function () {
            var pw = $('#exampleInputPassword1').val();
            var pw2 = $('#exampleInputPassword2').val();
            if(pw == pw2) {
            	$('#exampleInputPassword2').attr('class','form-control is-valid');
            	$('.invalid-feedback').attr('class','valid-feedback');
            	$('.valid-feedback').html("비밀번호가 일치합니다.");
            }else if(pw != pw2) {
            	$('#exampleInputPassword2').attr('class','form-control is-invalid');
            	$('.valid-feedback').attr('class','invalid-feedback');
            	$('.invalid-feedback').html("비밀번호가 일치하지않습니다.");
            }
        });
		
		var f_selbox = new Array('==단과대학선택==','인문대학','사회과학대학','자연과학대학','경영대학','공과대학','생활과학대학');
		
		var s_selbox = new Array();
		s_selbox[0] = new Array('==전공선택==','국어국문학과','중어중문학과','영어영문학과','불어불문학과','독어독문학과','노어노문학과','국사학과','철학과');
		s_selbox[1] = new Array('==전공선택==','정치외교학부','경제학부','사회학과','심리학과','사회복지학과','언론정보학과');
		s_selbox[2] = new Array('==전공선택==','수리과학부','통계학과','물리학','천문학','화학부','생명과학부','지구환경과학부');
		s_selbox[3] = new Array('==전공선택==','경영학과');
		s_selbox[4] = new Array('==전공선택==','건설환경공학부','재료공학부','화학생물공학부','에너지자원공학과','기계학공공학부','전기ㆍ정보공학부','건축학과','컴퓨터공학부');
		s_selbox[5] = new Array('==전공선택==','소비자아동학부(소비자학전공)','소비자아동학부(아동가족학전공)','식품영양학과','의류학과');
		
		var option = '';
		
		option += '<option value ="none">' + f_selbox[0] + '</option>';
		for(var i = 1; i < f_selbox.length; i++) {
			option += '<option value ="' + f_selbox[i] + '">' + f_selbox[i] + '</option>';
		}
		$('#exampleSelect1').append(option);
		
		
		$('#exampleSelect1').change(function() {
			var option2 = '';
			$("#exampleSelect2 *").remove();
			var m_val = $(this).val();
			console.log(m_val);
			if(m_val == "인문대학") {
				var option2 = '';
				option2 += '<option value ="none">' + s_selbox[0][0] + '</option>';
				for(var i = 1; i < s_selbox[0].length;i++) {
					option2 += '<option value ="' + s_selbox[0][i] + '">' + s_selbox[0][i] + '</option>';
				}
				$('#exampleSelect2').append(option2);
			} else if(m_val == "사회과학대학") {
				var option2 = '';
				option2 += '<option value ="none">' + s_selbox[1][0] + '</option>';
				for(var i = 1; i < s_selbox[1].length;i++) {
					option2 += '<option value ="' + s_selbox[1][i] + '">' + s_selbox[1][i] + '</option>';
				}
				$('#exampleSelect2').append(option2);
			} else if(m_val == "자연과학대학") {
				var option2 = '';
				option2 += '<option value ="none">' + s_selbox[2][0] + '</option>';
				for(var i = 1; i < s_selbox[2].length;i++) {
					option2 += '<option value ="' + s_selbox[2][i] + '">' + s_selbox[2][i] + '</option>';
				}
				$('#exampleSelect2').append(option2);
			} else if(m_val == "경영대학") {
				var option2 = '';
				option2 += '<option value ="none">' + s_selbox[3][0] + '</option>';
				for(var i = 1; i < s_selbox[3].length;i++) {
					option2 += '<option value ="' + s_selbox[3][i] + '">' + s_selbox[3][i] + '</option>';
				}
				$('#exampleSelect2').append(option2);
			} else if(m_val == "공과대학") {
				var option2 = '';
				option2 += '<option value ="none">' + s_selbox[4][0] + '</option>';
				for(var i = 1; i < s_selbox[4].length;i++) {
					option2 += '<option value ="' + s_selbox[4][i] + '">' + s_selbox[4][i] + '</option>';
				}
				$('#exampleSelect2').append(option2);
			} else if(m_val == "생활과학대학") {
				var option2 = '';
				option2 += '<option value ="none">' + s_selbox[5][0] + '</option>';
				for(var i = 1; i < s_selbox[5].length;i++) {
					option2 += '<option value ="' + s_selbox[5][i] + '">' + s_selbox[5][i] + '</option>';
				}
				$('#exampleSelect2').append(option2);
			} else if(m_val == "none") {
				var option2 = '';
				$('#exampleSelect2').append(option2);
			}
			
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div style="width: 50%; margin: auto; padding: 20px;">
			<form action="insert">
			  <fieldset>
			    <legend>학생정보등록</legend>
			    <hr>
			    
			    <div class="form-group">
			      <label for="student id">Student Id</label>
			      <input type="text" class="form-control" id="sNum" name="sNum" aria-describedby="emailHelp" placeholder="Student Id">
			      <small id="emailHelp" class="form-text text-muted">부여받은 학번을 입력해 주세요.</small>
			    </div>
			    
			    <div class="form-group">
			      <label for="password1">Password</label>
			      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
			    </div>
			    
			    <div class="form-group">
			      <label for="password2">Password Confirm</label>
			      <input type="password" class="form-control" id="exampleInputPassword2" name="sPw" placeholder="Password Confirm">
			      <div class="valid-feedback"></div>
			    </div>
			    
			    <div class="form-group">
			      <label for="name">Name</label>
			      <input type="text" class="form-control" id="name" name="sName" placeholder="Name">
			    </div>
			    
			    <fieldset class="form-group">
			      <label class="col-form-label col-form-label-lg" for="inputLarge">Gender</label>
			      <div class="form-check">
			        <label class="form-check-label">
			          <input type="radio" class="form-check-input" name="sGender" id="optionsRadios1" value="male" checked="">
			          	Male
			        </label>
			      </div>
			      <div class="form-check">
			      <label class="form-check-label">
			          <input type="radio" class="form-check-input" name="sGender" id="optionsRadios2" value="female">
			          	Female
			        </label>
			      </div>
			    </fieldset>
			    
			    <div class="form-group">
			      <label for="major">Major</label>
			      <select class="form-control" id="exampleSelect1"></select>
			      <br>
			      <select class="form-control" id="exampleSelect2" name="sMajor"></select>
			    </div>
			    
			    <div class="form-group">
			      <label for="phone">Phone Number</label>
			      <input type="text" class="form-control" id="phone" name="sTel" placeholder="Phone Number">
			    </div>
			    
			    <div class="form-group">
			      <label for="email1">E-mail</label>
			      <input type="text" class="form-control" id="email" name="sEmail" placeholder="E-mail">
			    </div>
			    
			    <div class="form-group">
			      <label for="address">Address</label>
			      <input type="text" class="form-control" id="address" name="sAddr" placeholder="Address">
			    </div>
			    
			    <button type="submit" class="btn btn-primary btn-block">Submit</button>
			    <button type="button" class="btn btn-outline-primary btn-block" onclick="location.href='home.jsp'">Cancel</button>
			  </fieldset>
			</form>
			
		</div>
	</div>
</body>
</html>