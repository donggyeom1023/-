<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>공지사항페이지</title>
  
  
  <link href="/css/egovframework/login_style.css" rel="stylesheet">
  <script type="text/javaScript" language="javascript" defer="defer">
  
  
  function fn_egov_addView() {
     	document.listForm.action = "<c:url value='/registerView.do'/>";
     	document.listForm.submit();
  }
  
  function fn_egov_login() {
   	document.listForm.action = "<c:url value='/actionLogin.do'/>";
   	document.listForm.submit();
}
  
  
  </script>
</head>

<body>
<form:form commandName="searchVO" id="listForm" name="listForm" method="post">
	<div id="header">
		<h1><a class="sp h_logo"><span class="blind">E Z E N</spa n></a></h1>
	</div>
  <div class="wrapper">
  <div id="contents">
    <div class="loginSec" id="loginSec">
      <div class="idPass">
        <fieldset>
        
          <legend><span>교수 로그인</span></legend>
          
          <div class="id"><input type="text" id="id" name = "id" class="input01" placeholder="ID를&nbsp;입력해주세요."></div>
          <div class="pass"><input type="password" id="password" name="password" class="input01" placeholder="비밀번호를 입력해주세요."></div>
          <p class="loginMsg d_msgError"></p>
      </fieldset>
      </div>
      <div class="btLoginPC"><a href="로그인 페이지(학생).html">학생 로그인</a></div>
    </div>
    <div class= "home"> 
        <a href= "javascript:fn_egov_login()"><button type="button" class="btn btn-primary btn-lg btn-block">로그인</button></a>
        <h1 style="padding-top: 10px; padding-bottom: 10px;">-------------------------또는-------------------------</h1>
  		<a href= "javascript:fn_egov_addView()"><button type="button" class="btn btn-primary btn-lg btn-block">회원가입</button></a>
     </div>
  </div>
  </div>
  </form:form>
</body>
</html>