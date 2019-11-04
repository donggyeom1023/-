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
    <title>메인페이지</title>
    <link rel="stylesheet"  href="/css/egovframework/bootstrap.css">
    <script type="text/javaScript" language="javascript" defer="defer">
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updateBoardView.do'/>";
           	document.listForm.submit();
        }
       </script>
</head>

<body style="margin:0 auto; display:inline; padding-top:100px;">
    <div class="contain">
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
       if(loginVO == null){ 
    %>
    <div id="header_loginname">
        <a href="#" ></a>
    </div>
    <div class="header_loginconnection"></div>
    <ul class="sec1">
        <li class="righttop_bgleft">&nbsp;</li>
        <li class="righttop_bgmiddle"><a href="<c:url value='login.do'/>">Login</a></li>
        <li class="righttop_bgright">&nbsp;</li>
    </ul>
    <% }else { %>
    
    <c:set var="loginName" value="${loginVO.getName()}"/>
    <ul class="sec1">
        <li class="righttop_bgleft">&nbsp;</li>
        <li class="righttop_bgmiddle"><c:out value="${loginName}"/> 님</li>
        <li class="righttop_bgmiddle"><a href="<c:url value='actionLogout.do'/>">Logout</a></li>
        <li class="righttop_bgright">&nbsp;</li>
    </ul>
    <% } %> 
    <div class="gallery_wrap">
	    <ul class="slide_gallery">
			<li><img src="../images/egovframework/example/college_1.jpg" alt="사진1"></li>
			<li><img src="../images/egovframework/example/college_2.jpg" alt="사진2"></li>
			<li><img src="../images/egovframework/example/ci_e_img01.jpg" alt="사진3"></li>
		</ul>
    </div>
    <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">공지사항  </a>
                </h4>
                </div>
            <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">
                <a href="boardList.do">공지사항</a>
                <br><a href="freeboard.do">자유게시판</a>
                <br><a href="mainNews.do">주요소식</a>
            </div>
            </div>
        </div>
        </div>
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
    <div class="table">
    <input type="hidden" name="selectedId" />
        <table width="100%" border="0" cellpadding="0" cellspacing="0" summary="ID, 제목, 내용, 작성자, 조회수">
            <caption style="visibility:hidden">ID, 제목, 내용, 작성자, 조회수</caption>
            <colgroup>
                <col width="20"/>
                <col width="50"/>
                <col width="30"/>
            </colgroup>
            <tr>
                <th align="center">No</th>
                <th align="center">제목</th>
                <th align="center">작성자</th>
            </tr>
            <c:forEach var="result" items="${resultList1}" varStatus="status">
                <tr class="thumbnail">
                    <td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
       				<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.bname}"/>')"><c:out value="${result.bname}"/></td>
       				<td align="center" class="listtd"><c:out value="${result.writer}"/></td>
                </tr>
            </c:forEach>
        </table>
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
    <script src="../js/bootstrap.js"></script>
    <script src="../js/bootstrap.min.js"></script>
   	<script src="../js/jquery.bxslider.min.js"></script>
   	<script>
   	$(function(){
		$('.slide_gallery').bxSlider({
			auto: true,
			pager: true
		});
	});
   	$(function () { $('#collapseOne').collapse('hide')});
    </script>
</body>
</html>
