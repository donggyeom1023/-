<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <title>회원가입페이지</title>
  <link rel="stylesheet" href="./css/egovframework//join_style.css">
</head>


<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
<form:form commandName="loginVO" id="loginForm" name="loginForm">

<div id="wrap">
  <!-- container -->
  <div id="container" role="main">
      <div id="content">
      <h2 class="blind">회원가입</h2>
      <div class="join_content">
      <div class="row_group">
      <div class="join_row">
        <h3 class="join_title"><label for="id">아이디</label></h3>
        <span class="ps_box int_id">
        <form:input path="id" type="text" id="id" name="id" class="int" title="ID" maxlength="20" /></span>
        <span class="error_next_box" id="idMsg" style="display:none" role="alert"></span>
      </div>
      <div class="join_row">
        <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
        <span class="ps_box int_pass" id="pswd1Img">
          <form:input path="password" type="password" id="pswd1" name="pswd1" class="int" title="비밀번호 입력" aria-describedby="pswd1Msg" maxlength="20"/>
        <span class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
        </span>
        
        </div>
    </div>
    <div class="row_group">
      <div class="join_row">
      <h3 class="join_title"><label for="name">이름</label></h3>
      <span class="ps_box box_right_space">
        <form:input path="name" type="text" id="name" name="name" title="이름" class="int" maxlength="40"/>
      </span>
      <span class="error_next_box" id="nameMsg" style="display:none" role="alert"></span>
      </div>
      <div class="join_row join_birthday">
      <h3 class="join_title"><label for="yy">생년월일</label></h3>
      <div class="bir_wrap">
      <div class="birth">
        <span class="ps_box">
          <form:input path="birth" type="text" id="yy" placeholder="ex)190722" aria-label="yymmdd"  class="int" maxlength="6"/>
        </span>
      </div>            
      </div>
		</div>
                      
                  </div>

                  <div class="join_row join_sex">
                      <h3 class="join_title"><label for="gender">학과</label></h3>
                      <div class="ps_box gender_code">
                          <form:select path="gender" aria-label="학과" style="width: inherit; height: 30px;">
                              <form:option value="컴퓨터공학과" selected=""/>
	                          <form:option value="정보통신학과"/>
	                          <form:option value="경영학과"/>
	                          <form:option value="IT시스템공학과"/>
	                          <form:option value="경제학과"/>
                          </form:select>
                      </div>
                  </div>
                   <span class="error_next_box" id="genderMsg" style="display:none" role="alert"></span>

                  <div class="join_row join_address">
                      <h3 class="join_title"><label for="address">주소<span class="terms_choice"></span></label></h3>
                      <span class="ps_box int_address box_right_space">
            <form:input path="addr" type="text" id="address" name="address" maxlength="100" placeholder="선택입력" aria-label="선택입력" class="int"/>
          </span>
                  </div>
                  <span class="error_next_box" id="addressMsg" style="display:none" role="alert"></span>
              </div>
              
              <div class="join_row join_mobile" id="mobDiv">
                  <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                  <div class="int_mobile_area">
          <span class="ps_box int_mobile">
            <form:input path="phonenum" type="tel" id="phoneNum" name="phoneNum" placeholder="전화번호 입력" aria-label="전화번호 입력" class="int" maxlength="16"/>
            <label for="phoneNo" class="lbl"></label>
          </span>
          </div>
          <span class="error_next_box" id="phoneNoMsg" style="display:none" role="alert"></span>
          <span class="error_next_box" id="authNoMsg" style="display:none" role="alert"></span>
          <span class="error_next_box" id="joinMsg" style="display:none" role="alert"></span>
          </div>
          </div>
      </div>
      <div class="btn_area">
          <button  type="button" id="btnJoin" class="btn_type btn_primary" onclick="location.href= 'javascript:fn_egov_save()'"><span>가입하기</span></button>
     
          
      </div>
  </div>
  <!-- // container -->

</form:form>
</body>