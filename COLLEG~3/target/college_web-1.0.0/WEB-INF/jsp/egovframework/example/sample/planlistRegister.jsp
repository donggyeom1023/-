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
    <c:set var="registerFlag" value="${empty planlistVO.cname ? 'create' : 'modify'}"/>
    <title>planlist <c:if test="${registerFlag == 'create'}">등록</c:if>
                  <c:if test="${registerFlag == 'modify'}">수정</c:if>
    </title>
    <link type="text/css" rel="stylesheet" href="<c:url value='./css/egovframework/boardResigter_style.css'/>"/>
    
    <!--For Commons Validator Client Side-->
    <script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
    <validator:javascript formName="planlistVO" staticJavascript="false" xhtml="true" cdata="false"/>
    
    <script type="text/javaScript" language="javascript" defer="defer">
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
           	document.detailForm.action = "<c:url value='/planList.do'/>";
           	document.detailForm.submit();
        }
        
        /* 글 삭제 function */
        function fn_egov_delete() {
           	document.detailForm.action = "<c:url value='/deletePlanList.do'/>";
           	document.detailForm.submit();
        }
        
        /* 글 등록 function */
        function fn_egov_save() {
       		frm = document.detailForm;
           	frm.action = "<c:url value="${registerFlag == 'create' ? '/addPlanList.do' : '/updatePlanList.do'}"/>";
            frm.submit();
        }
        
    </script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">

<form:form commandName="planlistVO" id="detailForm" name="detailForm" method="post" enctype="multipart/form-data">
    <div id="content_pop">
    	<!-- 타이틀 -->
    	<div id="title">
              <c:if test="${registerFlag == 'create'}">강의계획서 등록</c:if>
              <c:if test="${registerFlag == 'modify'}">강의계획서 수정</c:if>
    	</div>
    	<!-- // 타이틀 -->
    	<div id="table">
    	<table width="100%" border="1" cellpadding="0" cellspacing="0" style="bordercolor:#D3E2EC; bordercolordark:#FFFFFF; BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#ffffff 1px solid; BORDER-RIGHT:#ffffff 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;">
    		<colgroup>
    			<col width="100"/>
    			<col width="?"/>
    		</colgroup>
    		<c:if test="${registerFlag == 'modify'}">
        		<tr>
        			<td class="tbtd_caption"><label for="credate">작성일자</label></td>
        			<td class="tbtd_bname">
        				<form:input path="credate" cssClass="date" maxlength="10" readonly="true" />
        			</td>
        		</tr>
    		</c:if>
    		<tr>
    			<td class="tbtd_caption"><label for="cname">교과목명</label></td>
    			<td class="tbtd_bname">
    				<form:input path="cname" maxlength="30" cssClass="txt"/>
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="ccontent">내용</label></td>
    			<td class="tbtd_content">
    				<form:input path="ccontent" maxlength="100" style="height:inherit;" cssClass="txt"/>
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="professor">담당교수</label></td>
    			<td class="tbtd_bname">
    				<form:input path="professor" maxlength="30" cssClass="txt"/>
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="croom">강의실</label></td>
    			<td class="tbtd_bname">
    				<form:input path="croom" maxlength="4" cssClass="txt"/>
    			</td>
    		</tr>
    	</table>
      </div>
    	<div id="sysbtn">
    		<a href="javascript:fn_egov_selectList();">
			<button type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-tasks"></span>목록
			</button></a>
				<a href="javascript:fn_egov_save();">
					<c:if test="${registerFlag == 'create'}">
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-plus"></span>등록
					</button></c:if>
					<c:if test="${registerFlag == 'modify'}"><button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-pencil"></span>수정
					</button></c:if></a>
			<a href="javascript:fn_egov_delete();">
			<c:if test="${registerFlag == 'modify'}">
				<button type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-remove"></span>삭제
				</button></c:if></a>
			<a href="javascript:document.detailForm.reset();">
			<c:if test="${registerFlag == 'create'}">
				<button type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-refresh"></span>재설정
				</button></c:if></a>
	  </div>
    </div>
    <!-- 검색조건 유지 -->
    <input type="hidden" name="searchCondition" value="<c:out value='${searchVO.searchCondition}'/>"/>
    <input type="hidden" name="searchKeyword" value="<c:out value='${searchVO.searchKeyword}'/>"/>
    <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
</form:form>
</body>
</html>