<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�귣�彺�丮</title>
    <link rel="stylesheet" href="resources/css/brand.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Gothic+Coding:wght@400&display=swap" rel="stylesheet">



</head>
<body>

<header>
        <nav id="header_container">
            <ul id="menubar">
                <li>
                    <div>
                         <a href="/"><img src="resources/images/logo.png" alt=""></a>
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="/brand.jsp">�귣�彺�丮</a> 
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="#">Ŀ�´����̼�</a> 
                    </div>
                    <div class="dropdown_content1">
                        <a href="/contest/contestBoardList">�ڶ��ϱ�</a>
                        <a href="/market/marketBoardList">��������</a>
                        <a href="../html/find.html">ã���ּ���</a>
                        <a href="/board/questionBoardList">�ñ��ؿ�</a>
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="/tools.jsp">����</a> 
                    </div>
                    <div class="dropdown_content2">
                        <a href="/bcs.jsp">�񸸵�</a>
                        <a href="/daykcal.jsp">Į�θ�</a>
                        <a href="/age.jsp">����</a>
                        
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="#">���ܹޱ�</a>
                    </div>
                    <div class="dropdown_content3">
                        <a href="/vetintro.jsp">���ǻ� �Ұ�</a>
                        <a href="/hospital.jsp">�ֺ� ����</a>      
                    </div> 
                </li>
                <li class="dropdown">
                    <div class="dropdown_menu">
                        <a href="#">������</a>
                    </div>
                    <div class="dropdown_content4">
                        <a href="/question.jsp">���� ���� ����</a>
                        <a href="/oneonone.jsp">1:1 �����ϱ�</a>     
                    </div> 
                </li>
            </ul>
          
                
			<c:catch>
			    <c:choose>
			        <c:when test="${empty authInfo }">
			        <ul id="personal" >
			            <li>
			                 <a href="/login" style="font-size:13px;"><i class="fa fa-sign-in"></i> �α���</a>
			             </li>
			             <li>
			                 <a href="/register/step1" style="font-size:13px;"><i class="fa fa-user"></i> ȸ������</a>
			             </li>
			        </ul>
			             
			        </c:when>
			        <c:otherwise>
			            <c:choose>
			                <c:when test="${authInfo.manager eq '1' }">
			                
			                
			                <ul id="personal" style="margin-left:780px;">
			            
					            <li style="font-size:13px; margin-right:20px; margin-top:2px;">
					            	������ ${authInfo.name }
					            </li>
				            		<%-- <h5>������ ${authInfo.name }��, ȯ���մϴ�.</h5> --%>
				                  
				                 <li>
				                       <a href="/list"><i class="fa fa-sign-out"></i> ȸ�����</a>
				                 </li>                    
				                 <li>
				                       <a href="/logout"><i class="fa fa-sign-out"></i> �α׾ƿ�</a>
				                 </li>
				       
				            </ul>
				            
			                </c:when>
			                
			                
			                
			                <c:otherwise>
			                <ul id="personal" style="margin-left:800px;">
			            
						            <li style="font-size:13px; margin-right:30px; margin-top:2px;" >
						            	${authInfo.name }��
						            </li>
			
			                      <li>
			                          <a href="/logout" style="font-size:13px; "><i class="fa fa-sign-out"></i> �α׾ƿ�</a>
			                      </li>
			                      <li>
			                           <a href="/myPost"> ����������</a>
			                      </li>
			                      
			                     </ul> 
			                </c:otherwise>
			            </c:choose>
			        </c:otherwise>
			    </c:choose>
			</c:catch>
                
                
                
            
        </nav>
    </header>
    <div id="header_back">
    </div>
    <section id="container">
        <div id="contents">
            <div id="section1_box1">
                <img src="resources/images/brandstory1.jpeg" alt="" >
            </div>
            <div id="section1_back">
                <div id="section1_ment">
                    <span style="font-size: 120px;">Waltz</span> �� <br> ����� �ݷ������� ���� <br> ������ ����� �����ϴ�.
                </div>
            </div>  
        </div>
        <div id="second">
            <div id="section2">
                <div id="section2_ment1">
                    <p>�츮���� �̾߱Ⱑ <br>���� �� �ݷ������� ���� <br>���� ��̰� �� ���� �Ͻ��ϴ�.  </p>

                </div>
                <div id="section2_ment2">
                    <p>������ �ݷ����� Ŀ�´�Ƽ��<br>�ݷ������� ������� �Ÿ��� ������ <br> ��ΰ� �ູ�� �� �ִ� ��ȸ�� ����� ���� <br> 2021����� ���۵Ǿ����ϴ�.  </p>
                </div>
            </div>
        </div>
        <div id="section3">
            <div id="section3_ment1">
                <p><span>Ŀ�´����̼�</span>�� ���� <br>Ÿ�ΰ� �ݷ���Ȱ�� ���� �̾߱⸦ ������ <br> <span>����</span>�� �̿��Ͽ� �� �ݷ������� <br> �´� ������ �˾ƺ�����. <br>
                <span>���ܹޱ�</span>������ �ݷ������� �ǰ����¸� <br>üũ�� �� �ֽ��ϴ�. </p>

            </div>
            <div id="section3_ment2">
                <p>������ ��������<br>�������� �ݷ���Ȱ�� <br>���������� ����� <br> �ּ��� ���ϰ� �ֽ��ϴ�.  </p>
            </div>
        </div>

        <div id="section4">
            <div id="section4_comments" style="background-image:url('/resources/images/brandstory_section4.png')">
                <div id="section4_ment_box1">
                    <div class="section4_ment1">
                        <p>Communication</p>
                    </div>
                    <div class="section4_ment2">
                        <p>Ŀ�´����̼�</p>
                    </div>
                    <div class="section4_ment3">
                        <p id="section4_professional">�ݷ������� ��ȣ�ڵ��� ������ �� �ֵ��� ���� �����Դϴ�. <br>
				                        �ڶ��ϱ⸦ ���� �� �ݷ������� �ڶ��ϼ���.<br>
				                        �߰����Ϳ����� ���� �ʴ� �ְ߿�ǰ�� ��� �� �� �ֽ��ϴ�. <br>
				                        �Ҿ���� �ݷ������� �ִٸ� ã���ּ��並 ���� ã�ƺ�����. 
                        </p>
                    </div>
                    <div class="section4_ment1">
                        <p>Professional</p>
                    </div>
                    <div class="section4_ment2">
                        <p>���ܹޱ�</p>
                    </div>
                    <div class="section4_ment3">
                        <p>�ݷ������� �ǰ��� �̻��� ����ų� <br>�� �ڼ��� �˰� �ʹٸ� ��� �ؾ� �ұ��? <br>
				                            ������ ����� �������� �ʴ´ٸ� ������ �ڳʸ� �̿��� ������. <br>
				                            ������ �����ϰ� �ִ� �����ǵ��� <br>�������� ����� ����ֱ� ���� ��ٸ��� �ֽ��ϴ�. <br>
				                            ������ �ؾ����� �𸣴� ��ſ��� ���� �ذ�å�� �� �� �ֽ��ϴ�.</p>
                    </div>
                </div>
                <div id="section4_ment_box2">
                    <div class="section4_ment1">
                        <p>Tools</p>
                    </div>
                    <div class="section4_ment2">
                        <p>����</p>
                    </div>
                    <div class="section4_ment3">
                        <p id="section4_tools">�� �ݷ��������� �˸��� ������ �ൿ�� �ʿ��ϽŰ���? <br>
						                            ��� �̿��غ�����. <br>
						                            �� �ݷ������� �񸸵��� ����, Į�θ��� ����� �� �ֽ��ϴ�. <br>
						                            �ݷ������� ���� �� �� �ִ� ���� ��ȸ�� �� �̴ϴ�.<br>
						                            �ñ����� �ݷ����� ���� �Խ����� ���� �ذ��� �� �ֽ��ϴ�.</p>
                    </div>
                </div>       
            </div>

            <div id="copyright">
                <div id="copyright_box">
                    <div id="copyright_left">
                        <p id="cs">������<br>
                            080. 5498. 4890.<br>
                            waltzadmin@waltz.com</p>
                        <p id="address"> ��⵵ ������ �ȴޱ� �Ż�� 12-1 | ����(��) 
                            <br>������� : 2021�� 11�� 12�� 
                            <br>������ : ���ϳ� | ������ : ���ϳ�
                    </div>
                    <div id="copyright_right">
                        <div id="copyright_right1">
                            <p id="ment">
				                                ������ ��� �������� ���۱ǹ��� ���� ��ȣ�� �޽��ϴ�. <br>
				                                ���� ����, ��� �� ������ ó���� ���� �� �ֽ��ϴ�.
                            </p> 
                        </div>
                    
                        <div id="snslogo">
                            <a href="https://www.facebook.com"><img src="resources/images/facebook.png" alt=""></a>
                            <a href="https://www.instagram.com"><img src="resources/images/instagram.png" alt=""></a>
                            <a href="https://www.youtube.com"><img src="resources/images/youtube.png" alt=""></a>
                        </div>
                    </div>     
                </div>
            <hr id="copyright_line">
            <p id="copyright_last">Copyright (c) Waltz 2021, All Rights Reserved</p>
            </div>
            
            
    </section>   

    <div id="kakao">
        <img src="resources/images/kakaoimage.png" alt="" id="kakao_logo">
        <div>
            <img src="resources/images/up2.png" style="cursor: pointer;" alt="" id="up" onclick="window.scrollTo(0,0);">
        </div>
        
    </div>    


</body>
</html>