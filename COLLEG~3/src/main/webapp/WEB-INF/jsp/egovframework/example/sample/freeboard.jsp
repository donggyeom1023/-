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
    <title>자유게시판페이지</title>
    <link rel="stylesheet"  href="./css/egovframework/board_style.css">
    <script type="text/javaScript" language="javascript" defer="defer">
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updateFreeboardView.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/freeboard.do'/>";
           	document.listForm.submit();
        }
        function fn_egov_addView() {
           	document.listForm.action = "<c:url value='/addFreeBoardView.do'/>";
           	document.listForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/freeboard.do'/>";
           	document.listForm.submit();
        }
        
        
    </script>
</head>

<body style="margin:0 auto; display:inline; padding-top:100px;">
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
			<div class="panel-body">
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
    <section>
    	<ol class="breadcrumb">
                |
                <li><a href="boardList.do">공지사항</a></li>
                |
                <li class="active"><a href="#">자유게시판</a></li>
                |
                <li><a href="mainNews.do">주요소식</a></li>
                |
        </ol>
    </section>

    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        <input type="hidden" name="selectedId" />
        <div id="content_pop">
        	<!-- List -->
        	<div class="table">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="ID, 제목, 내용, 작성자, 조회수">
        			<caption style="visibility:hidden">ID, 제목, 내용, 작성자, 조회수</caption>
        			
        			<tr class="headtable">
        				<th align="center">No</th>
        				<th align="center">제목</th>
        				<th align="center">내용</th>
        				<th align="center">작성자</th>
        				<th align="center">조회수</th>
        			</tr>
        			<c:forEach var="result" items="${resultList}" varStatus="status">
            			<tr class="thumbnail">
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.freebtitle}"/>')"><c:out value="${result.freebtitle}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.freebcontent}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.freebwriter}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.freebviewcnt}"/></td>
            			</tr>
        			</c:forEach>
        		</table>
        	</div>
        	<!-- /List -->
        	<div id="paging" style="text-align: center; margin: 5px;">
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        		<form:hidden path="pageIndex" />
        	</div>
        	<div id="sysbtn" style="text-align: center;">
    			<a href="javascript:fn_egov_addView();">
				<button type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-pencil"></span>글쓰기
				</button></a>
            </div>
        	<div id="search">
       			    <label for="searchCondition" style="visibility:hidden;"></label>
       				<form:select path="searchCondition" cssClass="use">
       					<form:option value="0" label="제목" />
       					<form:option value="1" label="작성자" />
       				</form:select>
        			<label for="searchKeyword" style="visibility:hidden;display:none;"><spring:message code="search.keyword" /></label>
                    <form:input path="searchKeyword" cssClass="txt"/>
       	            <span class="btn_blue_l">
       	                <a href="javascript:fn_egov_selectList();">검색</a>
       	            </span>
        	</div>
        </div>
    </form:form>
    <footer id="re-footer">
        <img src="../images/egovframework/example/footer_logo.png" class="imgsbox">
        <div class="addr">
            대전광역시 서구 대덕대로 325<br>
    
            이젠컴퓨터대학교
            <span class="p">대표자 : 김동욱</span><br>
            
            학교의 명칭 : 이젠컴퓨터대학교
            <p class="copy">Copyright by EZEN. All rights reserved.</p>
        </div>
    </footer>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
    <script type="text/javascript">
	$(function () { $('#collapsehead').collapse('hide')});
	</script>
</body>
</html>
