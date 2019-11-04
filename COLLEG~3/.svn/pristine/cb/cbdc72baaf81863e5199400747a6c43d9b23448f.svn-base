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
    <title>강의과목 선택페이지</title>
    <link rel="stylesheet"  href="/css/egovframework/select_style.css">
    <link rel="stylesheet"  href="/css/egovframework/bootstrap.css">
    <script type="text/javaScript" language="javascript" defer="defer">
    function fn_egov_selectpage() {
    	document.listForm.action = "<c:url value='/classSelectpage.do'/>";
       	document.listForm.submit();
    }
    function fn_egov_select() {
    	document.listForm.action = "<c:url value='/selectView.do'/>";
       	document.listForm.submit();
    }
    </script>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <div class="left-side-bar">
    <div class="status-ico">
    <span>▶</span><span>▼</span>
        </div>
        <div id="nav">
        <ul class="menu">
        <li><h3><a href="#">카테고리</h3></a>
        <ul class="sub">
        <li><a href="classSelectpage.do">1. 출결관리</a></li>
        <li><a href="Classtimetable.do">2. 강의시간표</a></li>
        <li><a href="collegemain.do">3. 대학 홈페이지</a></li>
        </ul>
        </li>
        </ul>
        </div>
    </div>
    <header id="mainHeader">
        <div id = "logo"><a href="mainpage.do">E Z E N</a></div>
    </header>
    <%
       LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
       
    %>
    <section id="sec1">
               <c:set var="loginName" value="${loginVO.getName()}"/>
    <ul class="sec1">
        <li class="righttop_bgleft">&nbsp;</li>
        <li class="righttop_bgmiddle"><c:out value="${loginName}"/> 님</li>
        <li class="righttop_bgmiddle"><a href="<c:url value='actionLogout.do'/>">Logout</a></li>
        <li class="righttop_bgright">&nbsp;</li>
    </ul>
                
    </section>
   	<div class= "select">
   		<div class="classbtn">
   		<form:form commandName="searchVO" id="listForm" name="listForm" method="post">
			<c:forEach var="result" items="${resultList1}" varStatus="status">
				<a href="javascript:fn_egov_select();">
					<button type="button" class="btn btn-primary btn-lg btn-block"><c:out value="${result.clname}"/>
				</button></a>
			</c:forEach>
		</div>
    	</form:form>
    </div>
</body>
</html>
