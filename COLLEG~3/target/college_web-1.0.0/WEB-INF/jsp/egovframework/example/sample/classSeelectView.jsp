<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleRegister.jsp
  * @Description : Sample Register 화면
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
    <title>입실/퇴실 선택</title>
    <c:set target="${classselectVO}" property="cno"/>
    <link type="text/css" rel="stylesheet" href="<c:url value='./css/egovframework/classview.css'/>"/>
    <validator:javascript formName="classselectVO" staticJavascript="false" xhtml="true" cdata="false"/>
    <script type="text/javaScript" language="javascript" defer="defer">
        
        function fn_egov_come() {
        	document.detailForm.action = "<c:url value='/classdetailList.do'/>";
           	document.detailForm.submit();
        }
        function fn_egov_inout() {
        	document.detailForm.action = "<c:url value='/classSelectpage.do'/>";
           	document.detailForm.submit();
        }
        
    </script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">

<form:form commandName="classselectVO" id="detailForm" name="detailForm">
    <div id="content_pop">
    	<!-- 타이틀 -->
    	<header id="mainHeader">
        <div id = "logo"><a href="mainpage.do">E Z E N</a></div>
    	</header>
    	<!-- // 타이틀 -->
    	<div id="table">
			<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
			<jsp:useBean id="toDay" class="java.util.Date" />
			<c:choose>
				<c:when test="${classselectVO.cno='111111'}">
				<h1>123</h1>
				</c:when>
				<c:when test="${classselectVO.cno='222222'}">
				<h1>1234</h1>
				</c:when>
				<c:when test="${classselectVO.cno='333333'}">
				<h1>12345</h1>
				</c:when>
				<c:when test="${classselectVO.cno='444444'}">
				<h1>12346</h1>
				</c:when>
				<c:when test="${classselectVO.cno='555555'}">
				<h1>12347</h1>
				</c:when>
				<c:when test="${classselectVO.cno='666666'}">
				<h1>12348</h1>
				</c:when>
			</c:choose>
				<h1 class= "totime">현재시간 : <fmt:formatDate value="${toDay}" pattern="HH:mm:ss" /></h1>
			
      	</div>
    	<div id="sysbtn">
        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal1">
        <span class="glyphicon glyphicon-log-in">입실 
        </span></button>
        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal2">
        <span class="glyphicon glyphicon-log-out">퇴실
        </span></button>

	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header"></div>
	      <div class="modal-body">
	      <p>출석 처리 하시겠습니까? </p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	        <a href="javascript:fn_egov_inout()"><button type="button" class="btn btn-primary">처리가 완료되었습니다.</button></a>
	      </div>
	    </div> 
	  </div> 
	</div>
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	        <div class="modal-dialog">
	            <div class="modal-content">
	            <div class="modal-header"></div>
	            <div class="modal-body">
	            <p>퇴실 처리 하시겠습니까? </p>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	                <a href="javascript:fn_egov_inout()"><button type="button" class="btn btn-primary">처리가 완료되었습니다.</button></a>
	            </div>
	            </div> 
	        </div> 
	</div>
    </div>
		<div id="sysbtn">
			<a href="javascript:fn_egov_come();">
			<button type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-list"></span>세부출결현황
			</button></a></div>
    </div>
</form:form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<script src="../js/bootstrap.min.js"></script>

</body>
</html>