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
    <title >강의 시간표 세부정보</title>
    <link rel="stylesheet"  href="/css/egovframework/board_style.css">
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
        function fn_egov_selectNews() {
        	document.listForm.action = "<c:url value='/mainNews.do'/>";
           	document.listForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/freeboard.do'/>";
           	document.listForm.submit();
        }
             
    </script>
    <style>
    body {
        font-family: "맑은 고딕", "고딕", "굴림";
        
    }

    .schedule {
        border-collapse: separate;
        margin: 20px;
    }

    td {
        border: 1px solid black;
        padding: 30px;
        text-align: center;
        font-size: 10px;
        /* 글자 크기 10픽셀 */
        padding: 10px;
        
    }
     

    #tb1 td {
        empty-cells: show;
    }

    #tb2 td {
        empty-cells: hide;
    }
    #habor{
        text-align: center;
    }
    table{
        margin : 0 auto;
    }
    caption{
        text-align: center;
    }
	</style>
</head>

<body>
    <div class="left-side-bar">
        <div class="status-ico">
            <span>▶</span><span>▼</span>
        </div>
        <div id="nav">
        <ul class="menu">
        <li>
        <h3><a href="#">카테고리</h3></a>
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
    <section id=sec1>

        <a href="mainpage.do">Logout</a>

    </section>
    <h1 class="heading" id="habor">3월 강의시간표 세부정보 </h1>
    <table cellspacing="5" align="center" border="1" 
    width="550" height="600" > 
    <p></p>>

     
        <tr align="center" >
            <th width="100">시간＼요일</th>
            <th width="100">월</th>
            <th width="100">화</th>
            <th width="100">수</th>
            <th width="100">목</th>
            <th width="100">금</th>
        </tr>

        <tr>
            <td>10:00~10:50</td>
            <td rowspan="3"></td> 
            <td rowspan="6"></td> 
            <td rowspan="3" align="center" bgcolor="skyblue">Java프로그래밍(8913)</td>
            <td rowspan="6"> </td> 
            <td></td>
        </tr>

        <tr>
            <td>11:00~11:50</td>
            <td rowspan="3" align="center" bgcolor="pink">HTML(8616)</td>
        </tr>

        <tr>
            <td>13:00~13:50</td>
        </tr>

        <tr>
            <td>14:00~14:50</td>
            <td rowspan="3" align="center" bgcolor="yellow">HTML(8712)</td>
            <td rowspan="3" align="center" ></td>
        </tr> 
        
        <tr>
            <td>15:00~15:50</td>
            <td rowspan="2"> </td> 
        </tr>

        <tr>
            <td>16:00~16:50</td>
        </tr>

    </table>

</body>
</head>
</html>
