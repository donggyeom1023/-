<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
    <title>공지사항페이지</title>
    <link rel="stylesheet"  href="<c:url value='./css/egovframework/planList_style.css'/>">
    <script type="text/javaScript" language="javascript" defer="defer">
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/planList.do'/>";
           	document.listForm.submit();
        }
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/planList.do'/>";
           	document.listForm.submit();
        }
        function fn_egov_addView() {
           	document.listForm.action = "<c:url value='/addPlanListView.do'/>";
           	document.listForm.submit();
        }
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updatePlanListView.do'/>";
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
         <li>
         <h3><a href="#">카테고리</h3></a>
         <ul class="sub">
            <li><a href="#">1. 학생관리</a></li>
            <li id="hover"><a href="#">2. 강의관리</a>
                <ul class="sub2">
                    <li><a href="#">- 강의계획서</a></li>
                </ul>
            </li>
            <li><a href="collegemain.do">3. 대학 홈페이지</a></li>
        </ul>
      	</li>
        </ul>
        </div>
    </div>
    <header id="mainHeader">
        <div id = "logo"><a href="mainpage.do">E Z E N</a></div>
    </header>
    <section id="sec1">
            
            <a href="mainpage.do">Logout</a>
            
    </section> 
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        <input type="hidden" name="selectedId" />
        <div id="content_pop">
        	<!-- List -->
        	<div class="table">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="날짜, 교과목명, 강의내용, 담당교수, 강의실">
        			<caption style="visibility:hidden">날짜, 교과목명, 강의내용, 담당교수, 강의실</caption>
        			<colgroup>
        				<col width="50"/>
        				<col width="80"/>
        				<col width="100"/>
        				<col width="50"/>
        				<col width="40"/>
        				<col width="40"/>
        			</colgroup>
        			<tr>
        				<th align="center">No</th>
        				<th align="center">날짜</th>
        				<th align="center">교과목명</th>
        				<th align="center">강의내용</th>
        				<th align="center">담당교수</th>
        				<th align="center">강의실</th>
        			</tr>
        			<c:forEach var="result" items="${resultList}" varStatus="status">
        			<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
					<jsp:useBean id="toDay" class="java.util.Date" />
					<fmt:formatDate var="from" value="${toDay}" pattern="yyyyMMdd"/>
					<fmt:parseDate var="cresdate" value="${result.credate}" pattern="yyyy-MM-dd"/>
					<fmt:formatDate var="credate" value="${cresdate}" pattern="yyyyMMdd"/>
            			<tr class="thumbnail">
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<td>${result.credate}</td>
            				<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.cname}"/>')"><c:out value="${result.cname}"/></a></td>
            				<td align="center" class="listtd"><c:out value="${result.ccontent}"/><c:if test="${from-credate <= 2}"><span class="label label-default"> New </span></c:if></td>
            				<td align="center" class="listtd"><c:out value="${result.professor}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.croom}"/></td>
            			</tr>
        			</c:forEach>
        		</table>
        	</div>
        	<!-- /List -->
        	<div id="paging">
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        		<form:hidden path="pageIndex" />
        	</div>
        	<div id="sysbtn">
    			<a href="javascript:fn_egov_addView();">
				<button type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-pencil"></span>글쓰기
				</button></a>
            </div>
        </div>
    </form:form>
</body>
</html>
