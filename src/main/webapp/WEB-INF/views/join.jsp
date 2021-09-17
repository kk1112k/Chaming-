<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>

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