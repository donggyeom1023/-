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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <c:set var="registerFlag" value="${empty mainnewsVO.mname ? 'create' : 'modify'}"/>
    <title>MainNewslist</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/boardResigter_style.css'/>"/>
    
    <!--For Commons Validator Client Side-->
    <script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
    <validator:javascript formName="MainNewsVO" staticJavascript="false" xhtml="true" cdata="false"/>
    
    <script type="text/javaScript" language="javascript" defer="defer">
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
           	document.detailForm.action = "<c:url value='/mainNews.do'/>";
           	document.detailForm.submit();
        }
        
    </script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">

<form:form commandName="mainnewsVO" id="detailForm" name="detailForm">
    <div id="content_pop">
    	<!-- 타이틀 -->
    	<header id="mainHeader">
        <div id = "logo"><a href=#>주 요 소 식 상세페이지</a></div>
    	</header>
    	<!-- // 타이틀 -->
    	<div id="table">
    	<table width="100%" align="center" border="1" cellpadding="0" cellspacing="0" style="bordercolor:#D3E2EC; bordercolordark:#D3E2EC; BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#C2D0DB 1px solid; BORDER-RIGHT:#D3E2EC 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;">
    		<colgroup>
    			<col width="100"/>
    			<col width="?"/>
			</colgroup>
				<tr>
					<td class="tbtd_caption"><label for="mname"></label>제목</td>
					<td class="tbtd_bname">
						<form:input path="mname" cssClass="essentiality" maxlength="300" readonly="true"/>
					</td>
				</tr>
        		<tr>
        			<td class="tbtd_caption"><label for="mcontent"></label>내용</td>
        			<td class="tbtd_content">
        				<form:input id="content" path="mcontent" cssClass="essentiality" maxlength="1000" style="height:inherit;" readonly="true"/>
        			</td>
        		</tr>
        		<tr>
					<td class="tbtd_caption"><label for="stdate"></label>시작일자</td>
					<td class="tbtd_bname">
						<form:input path="stdate" maxlength="30" cssClass="date" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td class="tbtd_caption"><label for="enddate"></label>종료일자</td>
					<td class="tbtd_bname">
						<form:input path="enddate" maxlength="30" cssClass="date" readonly="true"/>
					</td>
				</tr>
    	</table>
      </div>
    	<div id="sysbtn1">
			<a href="javascript:fn_egov_selectList();">
			<button type="button" class="btn btn-primary btn-lg btn-block">목록</button></a>
		</div>
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
    <!-- 검색조건 유지 -->
    <input type="hidden" name="searchCondition" value="<c:out value='${searchVO.searchCondition}'/>"/>
    <input type="hidden" name="searchKeyword" value="<c:out value='${searchVO.searchKeyword}'/>"/>
    <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
</form:form>
</body>
</html>