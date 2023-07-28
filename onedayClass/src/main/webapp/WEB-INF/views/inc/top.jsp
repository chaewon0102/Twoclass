<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>

<div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
          <span class="icofont-close js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body">
      
      
       
      
           
      </div>
      
     
    </div>
	
	
    <nav class="site-nav">
      <div class="container">
        <div class="menu-bg-wrap">
          <div class="site-navigation">

            <a href="index.html" class="logo m-0 float-start"> </a>
			
			 <form class="d-flex" role="search">
			 <div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    검색 목록 선택
  </a>
<!--  	DB 선별 부분으로 바꿔야합니다 -->
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="classMain.jsp">전체</a></li>
    <li><a class="dropdown-item" href="classMain.jsp">클래스</a></li>
    <li><a class="dropdown-item" href="productList.jsp">상품</a></li>
  </ul>
			</div>
			 
      		<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      		<button class="btn btn-outline-success" type="submit">Search</button>
      		
    		</form>
    		
    		
    		
    		
            <ul
              class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
              <li><a href="index.html">Home</a></li>
              <li class="has-children active">
                <a href="ClassMain.jsp">Class</a>
                <ul class="dropdown">
                  <li><a href="#">공방 클래스</a></li>
                  <li><a href="#">요리 클래스</a></li>
                  <li class="has-children">
                    <a href="#">운동 클래스</a>
                    <ul class="dropdown">
                      <li><a href="#">야외</a></li>
                      <li><a href="#">실내</a></li>
                      <li><a href="#">정규반</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="property_single.jsp">Buy product</a></li>
              <li><a href="contact.jsp">Notice</a></li>
              <li><a href="contact.html">Contact Us</a></li>
              <li><a href="contact.html">Login</a></li>
<!--               <li><a href="contact.html">Register</a></li> -->
<!--                             <li><span class="icon_search search-switch"></sspan></li> -->
<!--                             <li><a href="#"><span class="icon_heart_alt"></span> -->
<!--                                 <div class="tip">2</div> -->
<!--                             </a></li> -->
<!--                             <li><a href="#"><span class="icon_bag_alt"></span> -->
<!--                                 <div class="tip">2</div> -->
<!--                             </a></li> -->   
			
				      
              </ul>
			
<a
              href="#"
              class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none"
              data-toggle="collapse"
              data-target="#main-navbar"
            >
              <span></span>
            </a>
          </div>
        </div>
      
      
                
      </div>
   
 
			
<!--      <div class="col-lg-3" style="float: right"> -->
<!--                     <div class="header__right"> -->
                    	<style>
/* 						    body{ background-color:#F0FFF0;} */
/*     						div.fixed { position: fixed; top:50px; left:0px; } */
						 </style>
<!--                         <div class="header__right__auth"> -->
<!--                             <a href="login.jsp">Login</a> -->
<!--                         </div> -->
                        <ul class="header__right__widget" style="float:left; display:table-row-group;">
<!--                             <li><span class="icon_search search-switch"></span></li> 검색 위젯 일단 생략 -->
                            <li> <a href="#">
                                <div class="dibs"><img src="../resources/images/찜하기.png" width="50" height="50" alt="찜하기"></div>
                            </a></li>
                            <li><a href="#">
                                <div class="cart"><img src="../resources/images/장바구니.png" width="50" height="50" alt="장바구니"></div>
                            </a></li>
                        </ul>
                        
<!--                     </div> -->
<!--                 </div> -->
     </nav>	
</header>