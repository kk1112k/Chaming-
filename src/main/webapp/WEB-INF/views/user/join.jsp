<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<script type="text/javascript">



$(document).ready(function() {
		
	$("#userId").focus();	
	
	$("#btnConfirm").on("click", function() {

		// 모든 공백 체크 정규식
		var emptCheck = /\s/g;
		// 영문 대소문자, 숫자로만 이루어진 4~12자리 정규식
		var idPwCheck = /^[a-zA-Z0-9]{4,12}$/;
				
		if($.trim($("#userId").val()).length <= 0)
		{
			alert("사용자 아이디를 입력하세요.");
			$("#userId").val("");
			$("#userId").focus();
			return;
		}
		
		if (emptCheck.test($("#userId").val())) 
		{
			alert("사용자 아이디는 공백을 포함할 수 없습니다.");
			$("#userId").focus();
			return;
		}
		
		if (!idPwCheck.test($("#userId").val())) 
		{
			alert("사용자 아이디는 4~12자의 영문 대소문자와 숫자로만 입력하세요");
			$("#userId").focus();
			return;
		}

		//ajax
	      $.ajax({
	         type: "POST",
	         url: "/user/idCheck",
	         data: {
	            userId: $("#userId").val()
	         },
	         datatype: "JSON",
	         beforeSend : function (xhr){
	            xhr.setRequestHeader("AJAX","true");
	         },
	         success:function(response){
	            if(response.code == 0)
	            {
	               //아이디 중복 없으면 회원가입 진행
	               alert("사용 가능한 아이디입니다.");
	               var dcheck1 = document.getElementById('dcheck');
					if (dcheck1.innerText == "A") {
						dcheck1.innerText = "B";  
					}
	               //fn_userReg();
	            }
	            else if(response.code == 100)
	            {
	               alert("중복된 아이디입니다.");
	               dcheck.innerText = "A"
	               $("#userId").focus();
	            }
	            else if(response.code == 400)
	            {
	               alert("파라미터 값이 올바르지 않습니다.");
	               dcheck.innerText == "A"
	               $("#userId").focus();
	            }
	            else
	            {
	               alert("오류가 발생했습니다.");
	               dcheck.innerText = "A"
	               $("#userId").focus();
	            }
	            
	         },
	         complete: function(data)
	         {
	            //응답이 종료되면
	            icia.common.log(data);
	         },
	         error: function(xhr, status, error)
	         {
	            icia.common.error(error);
	         }
	      
	      });
	});
	

	$("#btnReg").on("click", function() {

		var emptCheck = /\s/g;
		// 영문 대소문자, 숫자로만 이루어진 4~12자리 정규식
		var idPwCheck = /^[a-zA-Z0-9]{4,12}$/;
		// 이메일 유효성검사
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		var dcheck2 = document.getElementById('dcheck');
	
		if($.trim($("#userId").val()).length <= 0)
		{
			alert("사용자 아이디를 입력하세요.");
			$("#userId").val("");
			$("#userId").focus();
			return;
		}
		
		if (dcheck2.innerText == "A") {
			alert("아이디 중복확인을 체크해주세요");
			$("#userId").focus();
			return;
		}

		if($.trim($("#userPwd1").val()).length <= 0)
		{
			alert("비밀번호를 입력하세요.");
			$("#userPwd1").val("");
			$("#userPwd1").focus();
			return;
		}
		
		if (emptCheck.test($("#userPwd1").val())) 
		{
			alert("비밀번호는 공백을 포함할 수 없습니다.");
			$("#userPwd1").focus();
			return;
		}
		
		if (!idPwCheck.test($("#userPwd1").val())) 
		{
			alert("비밀번호는 영문 대소문자와 숫자로 4~12자리 입니다.");
			$("#userPwd1").focus();
			return;
		}
		
		
		if ($("#userPwd1").val() != $("#userPwd2").val()) 
		{
			alert("비밀번호가 일치하지 않습니다.");
			$("#userPwd2").focus();
			return;
		}
		
		if($.trim($("#userName").val()).length <= 0)
		{
			alert("사용자 이름을 입력하세요.");
			$("#userName").val("");
			$("#userName").focus();
			return;
		}
		
		if (emptCheck.test($("#userPwd1").val())) 
		{
			alert("비밀번호는 공백을 포함할 수 없습니다.");
			$("#userPwd1").focus();
			return;
		}
		
		if($.trim($("#userEmail").val()).length <= 0)
		{
			alert("사용자 이메일을 입력하세요.");
			$("#userEmail").val("");
			$("#userEmail").focus();
			return;
		}
		
		if(!emailReg.test($("#userEmail").val()))
		{
			alert("사용자 이메일 형식이 올바르지 않습니다.");
			$("#userEmail").focus();
			return;	
		}
		$("#_userClass").val($("input[name='userClass']:checked").val());
		$("#userPwd").val($("#userPwd1").val());
		$("#_userGender").val($("input[name='userGender']:checked").val());
		
 	
		
	});
	
});

function fn_userReg(area_Num, subArea_Num)
{	
	$.ajax({
	      type: "POST",
	      url: "/user/regProc",
	      data: {
	         userId: $("#userId").val(),
	         userClass: $("#_userClass").val(),
	         areaNum: area_Num,
	         subAreaNum: subArea_Num,
	         userPwd: $("#userPwd").val(),
	         userName: $("#userName").val(),
	         userEmail: $("#userEmail").val(),
	         userGender: $("#_userGender").val()
	      },
	      datatype: "JSON",
	      beforeSend : function (xhr){
	         xhr.setRequestHeader("AJAX","true");
	      },
	      success:function(response){
	         if(response.code == 0)
	         {
	            alert("회원 가입이 되었습니다.");
	            location.href="/../index";
	         }
	         else if(response.code == 100)
	         {
	            alert("회원 아이디가 중복되었습니다.");
	            $("#userId").focus();
	         }
	         else if(response.code == 400)
	         {
	            alert("회원가입 정보가 부족합니다. 다시 확인해 주세요.");
	            $("#userId").focus();
	         }
	         else if(response.code == 500)
	         {
	            alert("회원가입 정보가 부족합니다. 다시 확인해 주세요.");
	            $("#userId").focus();
	         }
	         else
	         {
	            alert("회원 가입중 오류가 발생했습니다.");
	            $("#userId").focus();
	         }
	         
	      },
	      complete: function(data)
	      {
	         //응답이 종료되면
	         icia.common.log(data);
	      },
	      error: function(xhr, status, error)
	      {
	         icia.common.error(error);
	      }
	   
	   });
}


</script>

<body>
<br><br><br><br><br><br>

        <div class="login-form-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">
                                
          <h2 class="text-center">회원가입</h2>
          <form name="form" method="post" action="">
				<div class="form-group">
					<input type="text" id="userId" name="userId" placeholder="아이디" class="form-control">
				</div>
				<div class="form-group text-center">
		           	<button type="button" id="btnConfirm" class="btn btn-main text-center" style="witdth:200px; height:60px;">중복확인</button>
		           	<span id="dcheck" style="display:none;">A</span><br>
	           </div>
				
				<label style="font-size:18px;">지역</label>&nbsp;&nbsp;
				<c:if test="${!empty areaList}">
					<select name="area" id="area" onchange="fn_areaBefore()" style="font-size:18px;">
							<option id="areaNum0" class="areaNum" value="000">전체</option>
						<c:forEach var="areaList" items="${areaList}" varStatus="status">
							<option id="areaNum${status.count}" class="areaNum" value="${areaList.areaNum}">${areaList.areaName}</option>
						</c:forEach>
					</select>
				</c:if>
				&nbsp;&nbsp;
				<label style="font-size:18px;">시/군/구 :</label>&nbsp;&nbsp;
				<select name="subArea" id="subArea" style="font-size:18px;">
					<option id="subAreaNum0" class="subAreaNum" value="00000">---</option>
				</select>
				
				<br /><br />
				<div class="form-group">
	              <input type="password" class="form-control" id="userPwd1" name="userPwd1" placeholder="비밀번호">
	            </div>
	            <div class="form-group">
	              <input type="password" class="form-control" id="userPwd2" name="userPwd2" placeholder="비밀번호확인">
	            </div>
	            <input type="hidden" id="userPwd" name="userPwd" value="" />
	            <input type="hidden" id="areaNum" name="areaNum" value="" />
	            <input type="hidden" id="subAreaNum" name="subAreaNum" value="" />
				<div class="form-group">
					<input type="text" class="form-control" id="userName" name="userName" placeholder="이름">
				</div>
				<div class="form-group">
					<input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="이메일주소">
				</div>
				<div class="form-group text-center">
					<div class="form-check">
						<input type="hidden" id="_userGender" value="" />
						<input class="form-check-input" type="radio" name="userGender" id="userGender1" value="M">
						<label class="form-check-label" for="userGender1"  style="width: 80px; font-size:18px;">남</label>
						<input class="form-check-input" type="radio" name="userGender" id="userGender2" value="F" >
						<label class="form-check-label" for="userGender2"  style="width: 80px; font-size:18px;">여</label>
					</div>
				</div>
	
				<div class="text-center">
					<button type="button" id="btnReg" class="btn btn-main text-center" style="witdth:200px; height:60px;">회원가입</button>
				</div>
			</form><BR><br>
          <p class="mt-20">참잉 회원이신가요? <a href="login"> 로그인</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

     

    
</body>

</html>