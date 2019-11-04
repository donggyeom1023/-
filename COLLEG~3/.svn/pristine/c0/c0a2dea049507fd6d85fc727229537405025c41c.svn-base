<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%@ page import ="egovframework.example.sample.service.LoginVO" %>

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
    <title>세부 출결현황</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='./css/egovframework/classdetail_style.css'/>"/>
    
    <script type="text/javaScript" language="javascript" defer="defer">
        
        function fn_egov_come() {
        	document.detailForm.action = "<c:url value='/deleteSample.do'/>";
           	document.detailForm.submit();
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
	<div class="container"> 
	<form:form commandName="searchVO" id="listForm" name="listForm" method="post">
    <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                  <button type="button" class="btn btn-primary btn-lg btn-block">켐스튼 디자인
                  </button></a>
          </div>
          <div id="collapseOne" class="panel-collapse collapse in">
              <div class="panel-body">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="날짜, 교과목명, 강의내용, 담당교수, 강의실">
        			<colgroup>
        				<col width="80"/>
        				<col width="50"/>
        			</colgroup>
        			<tr>
        				<th align="center">수업일자</th>
        				<th align="center">출결여부</th>
        			</tr>
        			<c:forEach var="result" items="${resultList2}" varStatus="status">
            			<tr>
            				<td>${result.cldate}</td>
            				<td>456</td>
            			</tr>
        			</c:forEach>
        		</table>
              </div>
          </div></div>
          <div class="panel panel-default">
              <div class="panel-heading">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                    <button type="button" class="btn btn-primary btn-lg btn-block">java프로그래밍
                    </button></a>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse in">
          <div class="panel-body">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="날짜, 교과목명, 강의내용, 담당교수, 강의실">
        			<colgroup>
        				<col width="80"/>
        				<col width="50"/>
        			</colgroup>
        			<tr>
        				<th align="center">수업일자</th>
        				<th align="center">출결여부</th>
        			</tr>
        			<c:forEach var="result" items="${resultList2}" varStatus="status">
            			<tr>
            				<td>${result.cldate}</td>
            				<td>456</td>
            			</tr>
        			</c:forEach>
        		</table>
          </div>
          </div></div>
          <div class="panel panel-default">
            <div class="panel-heading">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                    <button type="button" class="btn btn-primary btn-lg btn-block">HTML
                    </button></a>
            </div>
            <div id="collapseThree" class="panel-collapse collapse in">
            <div class="panel-body">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="날짜, 교과목명, 강의내용, 담당교수, 강의실">
        			<colgroup>
        				<col width="80"/>
        				<col width="50"/>
        			</colgroup>
        			<tr>
        				<th align="center">수업일자</th>
        				<th align="center">출결여부</th>
        			</tr>
        			<c:forEach var="result" items="${resultList2}" varStatus="status">
            			<tr>
            				<td>${result.cldate}</td>
            				<td>456</td>
            			</tr>
        			</c:forEach>
        		</table>
            </div>
            </div></div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                    <button type="button" class="btn btn-primary btn-lg btn-block">Database
                    </button></a>
            </div>
            <div id="collapseFour" class="panel-collapse collapse in">
            <div class="panel-body">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="날짜, 교과목명, 강의내용, 담당교수, 강의실">
        			<colgroup>
        				<col width="80"/>
        				<col width="50"/>
        			</colgroup>
        			<tr>
        				<th align="center">수업일자</th>
        				<th align="center">출결여부</th>
        			</tr>
        			<c:forEach var="result" items="${resultList2}" varStatus="status">
            			<tr>
            				<td>${result.cldate}</td>
            				<td>456</td>
            			</tr>
        			</c:forEach>
        		</table>
            </div>
            </div></div>

            <div class="panel panel-default">
              <div class="panel-heading">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                    <button type="button" class="btn btn-primary btn-lg btn-block">JAVA Script
                    </button></a>
              </div>
              <div id="collapseFive" class="panel-collapse collapse in">
              <div class="panel-body">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="날짜, 교과목명, 강의내용, 담당교수, 강의실">
        			<colgroup>
        				<col width="80"/>
        				<col width="50"/>
        			</colgroup>
        			<tr>
        				<th align="center">수업일자</th>
        				<th align="center">출결여부</th>
        			</tr>
        			<c:forEach var="result" items="${resultList2}" varStatus="status">
            			<tr>
            				<td>${result.cldate}</td>
            				<td>456</td>
            			</tr>
        			</c:forEach>
        		</table>
              </div>
              </div></div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
                <button type="button" class="btn btn-primary btn-lg btn-block">CSS
                </button></a>
            </div>
            <div id="collapseSix" class="panel-collapse collapse in">
            <div class="panel-body">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="날짜, 교과목명, 강의내용, 담당교수, 강의실">
        			<colgroup>
        				<col width="80"/>
        				<col width="50"/>
        			</colgroup>
        			<tr>
        				<th align="center">수업일자</th>
        				<th align="center">출결여부</th>
        			</tr>
        			<c:forEach var="result" items="${resultList2}" varStatus="status">
            			<tr>
            				<td>${result.cldate}</td>
            				<td>456</td>
            			</tr>
        			</c:forEach>
        		</table>
            </div>
            </div></div>
      </div>
      </form:form>
  </div>
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function () { $('#collapseOne').collapse('hide')});
    $(function() { $('#collapseTwo').collapse('hide')});
    $(function() { $('#collapseThree').collapse('hide')});
    $(function() { $('#collapseFour').collapse('hide')});
    $(function() { $('#collapseFive').collapse('hide')});
    $(function() { $('#collapseSix').collapse('hide')});
    </script>

</body>
</html>