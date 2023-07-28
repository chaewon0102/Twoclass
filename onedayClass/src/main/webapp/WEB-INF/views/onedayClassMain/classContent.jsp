<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%> --%><!-- /*
* Template Name: Property
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Untree.co" />
    <link rel="shortcut icon" href="favicon.png" />

    <meta name="description" content="" />
    <meta name="keywords" content="bootstrap, bootstrap5" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />


<script type="text/javascript"
 src="${pageContext.request.contextPath }/resources/script/jquery-3.7.0.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/tiny-slider.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" />
    

    <title>
      클래스 상세 페이지
    </title>
  </head>
  <body>
       <!-- header -->
    
<jsp:include page="../inc/top.jsp"></jsp:include>

ClassDTO dto = new ClassDTO();
request.setAttribute("dto", dto);
    <div
      class="hero page-inner overlay"
      style="background-image: url('images/hero_bg_3.jpg')"
    >
      <div class="container">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-9 text-center mt-5">
            <h1 class="heading" data-aos="fade-up">
             ${dto.class_title}
            </h1>

            <nav
              aria-label="breadcrumb"
              data-aos="fade-up"
              data-aos-delay="200"
            >
              <ol class="breadcrumb text-center justify-content-center">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item">
                  <a href="properties.html">Properties</a>
                </li>
                <li
                  class="breadcrumb-item active text-white-50"
                  aria-current="page"
                >
                  5232 California AVE. 21BC
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </div>
    
    
    
    <div class="section">
      <div class="container">
        <div class="row justify-content-between">
        
          <div class="col-lg-7">
            <div class="img-property-slide-wrap">
              <div class="img-property-slide">
                <img src="${pageContext.request.contextPath }/resources/images/img_1.jpg" alt="Image" class="img-fluid" />
                <img src="${pageContext.request.contextPath }/resources/images/img_2.jpg" alt="Image" class="img-fluid" />
                <img src="${pageContext.request.contextPath }/resources/images/img_3.jpg" alt="Image" class="img-fluid" />
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <h2 class="heading text-primary">${dto.class_title}</h2>
            <p class="meta">California, United States</p>
            <p class="text-black-50">
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione
              laborum quo quos omnis sed magnam id, ducimus saepe, debitis error
              earum, iste dicta odio est sint dolorem magni animi tenetur.
            </p>
            <p class="text-black-50">
              Perferendis eligendi reprehenderit, assumenda molestias nisi eius
              iste reiciendis porro tenetur in, repudiandae amet libero.
              Doloremque, reprehenderit cupiditate error laudantium qui, esse
              quam debitis, eum cumque perferendis, illum harum expedita.
            </p>

            <div class="d-block agent-box p-5">
              <div class="img mb-4">
                <img
                  src="${pageContext.request.contextPath }/resources/images/person_2-min.jpg"
                  alt="Image"
                  class="img-fluid"
                />
              </div>
              <div class="text">
                <h3 class="mb-0">Alicia Huston</h3>
                <div class="meta mb-3">Real Estate</div>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Ratione laborum quo quos omnis sed magnam id ducimus saepe
                </p>
                <ul class="list-unstyled social dark-hover d-flex">
                  <li class="me-1">
                    <a href="#"><span class="icon-instagram"></span></a>
                  </li>
                  <li class="me-1">
                    <a href="#"><span class="icon-twitter"></span></a>
                  </li>
                  <li class="me-1">
                    <a href="#"><span class="icon-facebook"></span></a>
                  </li>
                  <li class="me-1">
                    <a href="#"><span class="icon-linkedin"></span></a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        
        <!-- 따온거 -->
        
        
         <div class="row text-left mb-5">
          <div class="col-12">
            <h2 class="font-weight-bold heading text-primary mb-4">클래스 소개</h2>
          </div>
          <div class="col-lg-6">
            <p class="text-black-50">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam
              enim pariatur similique debitis vel nisi qui reprehenderit totam?
              Quod maiores.
            </p>
            <p class="text-black-50">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni
              saepe, explicabo nihil. Est, autem error cumque ipsum repellendus
              veniam sed blanditiis unde ullam maxime veritatis perferendis
              cupiditate, at non esse!
            </p>
            <p class="text-black-50">
              Enim, nisi labore exercitationem facere cupiditate nobis quod
              autem veritatis quis minima expedita. Cumque odio illo iusto
              reiciendis, labore impedit omnis, nihil aut atque, facilis
              necessitatibus asperiores porro qui nam.
            </p>
          </div>
          <div class="col-lg-6">
            <p class="text-black-50">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni
              saepe, explicabo nihil. Est, autem error cumque ipsum repellendus
              veniam sed blanditiis unde ullam maxime veritatis perferendis
              cupiditate, at non esse!
            </p>
            <p class="text-black-50">
              Enim, nisi labore exercitationem facere cupiditate nobis quod
              autem veritatis quis minima expedita. Cumque odio illo iusto
              reiciendis, labore impedit omnis, nihil aut atque, facilis
              necessitatibus asperiores porro qui nam.
            </p>
          </div>
        </div>
        
        
        
        
        <!-- 따온거 -->
         <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">커리큘럼 소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">위치</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">후기</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">문의</a>
                            </li>
                        </ul>
                        
                        
                        
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <h6>커리큘럼 소개</h6>
                                <p></p>
                                <p></p>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <h6>위치</h6>
                                <p></p>
                                <p></p>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <h6>후기</h6>
                                <p></p>
                                <p></p>
                            </div>
                            
                            <div class="tab-pane" id="tabs-4" role="tabpanel">
                                <h6>문의</h6>
                                <p></p>
                                <p></p>
                            </div>
                            
                        </div>
                    </div>
                </div>
        
      </div>
    </div>

       <!-- footer -->
<%--     <jsp:include page="../inc/bottom.jsp"></jsp:include> --%>

<jsp:include page="../inc/bottom.jsp"></jsp:include>
    <!-- /.site-footer -->

    <!-- Preloader -->
  <!--   <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="visually-hidden">Loading...</span>
      </div>
    </div> -->

    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/tiny-slider.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/navbar.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/counter.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>
    
  </body>
</html>
