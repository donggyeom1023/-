<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import ="egovframework.example.sample.service.LoginVO" %>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <title>세부 출결현황</title>
    <link type="text/css" rel="stylesheet" href="./css/egovframework/classtimetable_style.css">
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
<div class="contain">
<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapsehead">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></a>
				</h4>
				</div>
			<div id="collapsehead" class="panel-collapse collapse in">
			<div class="panel-body" style="width: 95%; margin: 0 auto;">
				<li class="panel-font"><a href="classSelectpage.do">출결관리</a></li>
				<li class="panel-font"><a href="Classtimetable.do">강의시간표</a></li>
				<li class="panel-font"><a href="collegemain.do">대학 홈페이지</a></li>
			</div>
			</div>
		</div>
		<div id = "logo"><a href="mainpage.do">E Z E N</a></div>
		<% LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); %>
        <c:set var="loginName" value="${loginVO.getName()}"/>
    	<ul class="sec1">
        <li class="righttop_bgmiddle"><c:out value="${loginName}"/> 님 <a href="<c:url value='actionLogout.do'/>">Logout</a></li>
    	</ul>
	</div>
                
    </section>
	<div class="container">
    <div class="panel-group" id="accordion">
        <div class="panel panel-default" style="width: 70%;">
          <div class="panel-heading">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                  <button type="button" class="btn btn-primary btn-lg btn-block">1학기
                  </button></a>
          </div>
          <div id="collapseOne" class="panel-collapse collapse in">
              <div class="panel-body" style="width: 90%; margin: 0 auto;">
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">3월</button></a>
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">4월</button></a>
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">5월</button></a>
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">6월</button></a>
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">7월</button></a>
              </div>
          </div></div>
          <div class="panel panel-default" style="width: 70%;">
              <div class="panel-heading">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                    <button type="button" class="btn btn-primary btn-lg btn-block">2학기
                    </button></a>
          </div>
           <div id="collapseTwo" class="panel-collapse collapse in">
              <div class="panel-body">
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">8월</button></a>
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">9월</button></a>
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">10월</button></a>
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">11월</button></a>
              <a href="Timetable.do"><button type="button" class="btn btn-primary1 btn-lg btn-block1">12월</button></a>
              </div>
          </div></div>
  </div>
  </div>
  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	
	<script src="../js/bootstrap.min.js"></script>
	<script>
	   $(function () { $('#collapseOne').collapse('hide')});
	   $(function() { $('#collapseTwo').collapse('hide')});
	   $(function () { $('#collapsehead').collapse('hide')});
	</script>

</body>
</html>