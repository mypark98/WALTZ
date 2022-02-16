<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>마이페이지</title>
	
	<link rel="stylesheet" href="/resources/css/userlist.css">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">

</head>

<body>

	<header>
        <nav id="header_container">
            <ul id="menubar">
                <li>
                    <div>
                        <a href="/"><img src="/resources/images/logo.png" alt=""></a>
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="/brand.jsp">브랜드스토리</a>  
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="#" >커뮤니케이션</a> 
                    </div>
                    <div class="dropdown_content1">
                        <a href="/contest/contestBoardList">자랑하기</a>
                        <a href="/market/marketBoardList">왈츠장터</a>
                        <a href="../html/find.html">찾아주세요</a>
                        <a href="/board/questionBoardList">궁금해요</a>
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="/tools.jsp">툴즈</a>  
                    </div>
                    <div class="dropdown_content2">
                        <a href="/bcs.jsp">비만도</a>
                        <a href="/daykcal.jsp">칼로리</a>
                        <a href="/age.jsp">나이</a>
                        
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="#">진단받기</a>
                    </div>
                    <div class="dropdown_content3">
                        <a href="/vetintro.jsp">수의사 소개</a>
                        <a href="/hospital.jsp">주변 병원</a>        
                    </div> 
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="#">고객센터</a>
                    </div>
                    <div class="dropdown_content4">
                         <a href="/question.jsp">자주 묻는 질문</a>
                        <a href="/oneonone.jsp">1:1 질문하기</a>   
                    </div> 
                </li>
            </ul>
            <ul id="personal" style="margin-left:880px;">
                <li class="login">
                    <a href="/logout" style="font-size:13px;"><i class="fa fa-sign-out"></i>로그아웃</a>
                </li>
                <li class="login">
                     <a href="/myPage" style="font-size:13px;">마이페이지</a>
                </li>
            </ul>
        </nav>
    </header>
    <div id="header_back">
    </div>
    <section id="container">
        <div id="title">
            
            <!-- <img src="../image/logo.png" alt=""> -->
            
        </div>

        <div id="id_list">
            <div id="list_box">
                <p>회원목록</p>
                <div id="mypage_box">


                    <form action="/expelUser" method="POST" id="expelForm">
                        <table border="1" width="700px">
                            <tr>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>이메일</th>
                            </tr>
                        <c:choose>
                            <c:when test="${fn:length(list) > 0}">
                                <c:forEach items="${list}" var="info">	
                                    <tr>
                                        <td><c:out value="${info.MEM_ID}"></c:out></td>
                                        <td><a href="${path}/view?id=${info.MEM_ID}"><c:out value="${info.MEM_NAME}"></c:out></a></td>
                                        <td><c:out value="${info.MEM_EMAIL}"></c:out></td>
                                    </tr>
                                </c:forEach>
                            </c:when>
                            
                            <c:otherwise>
                                <tr>
                                    <td colspan="5">조회된 결과가 없습니다.</td>
                                </tr>
                            </c:otherwise>
                        </c:choose>
                            
                        </table>
                        </form>
                        <br>
                        <input type="button" value="메인으로" class="btn" id="gomain" onclick="location.href='/'">

                </div>
            </div>
        </div>
        <div id="copyright">
            <div id="copyright_box">
                <div id="copyright_left">
                    <p id="cs">고객센터<br>
                        080. 5498. 4890.<br>
                        waltzadmin@waltz.com</p>
                    <p id="address"> 경기도 수원시 팔달구 매산로 12-1 | 왈츠(주) 
                        <br>등록일자 : 2021년 11월 12일 
                        <br>발행인 : 오일남 | 편집인 : 오일남
                </div>
                <div id="copyright_right">
                    <div id="copyright_right1">
                        <p id="ment">
				                            왈츠의 모든 콘텐츠는 저작권법에 의해 보호를 받습니다. <br>
				                            무단 복제, 모방 시 법적인 처벌을 받을 수 있습니다.
                        </p> 
                    </div>
                
                    <div id="snslogo">
                        <a href="https://www.facebook.com"><img src="/resources/images/facebook.png" alt=""></a>
                        <a href="https://www.instagram.com"><img src="/resources/images/instagram.png" alt=""></a>
                        <a href="https://www.youtube.com"><img src="/resources/images/youtube.png" alt=""></a>
                    </div>
                </div>     
            </div>
        <hr id="copyright_line">
        <p id="copyright_last">Copyright (c) Waltz 2021, All Rights Reserved</p>
        </div>    

    </section>

    <div id="kakao">
        <img src="/resources/images/kakaoimage.png" alt="" id="kakao_logo">
        <div>
            <img src="/resources/images/up2.png" style="cursor: pointer;" alt="" id="up" onclick="window.scrollTo(0,0);">
        </div>
        
    </div>
	
</body>

</body>
</html>