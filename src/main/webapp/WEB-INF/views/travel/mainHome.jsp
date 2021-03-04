<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.icia.common.util.StringUtil"%>
<%@ page import="com.icia.web.util.HttpUtil"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jsp" %> 
<title>여러사람</title>

<body>
   <%@ include file="/WEB-INF/views/include/teamNavigation.jsp" %>
   <main id="main">
     
    <!-- ======= 목차 ======= -->
    <section class="section site-travel">
      <div class="container">
        <div class="row mb-5 align-items-center">
          <div class="col-md-12 text-center" data-aos="fade-up" data-aos-delay="100">
            <div id="filters" class="filters">
              <a href="#" data-filter="*" class="active"><h2>여러사람</h2></a>
              <a href="#" data-filter=".travel"><h2>추천여행지</h2></a>
              <a href="#" data-filter=".use"><h2>사용방법</h2></a>
            </div>
          </div>
        </div>
      <hr/>
      
      <div class="text-center"><h3>어디로 떠나볼까요?</h3><br/><br/></div>
       
        <div id="portfolio-grid" class="row no-gutter" data-aos="fade-up" data-aos-delay="200">  
          <div class="item travel col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="/travel/design/jeju" class="item-wrap fancybox">
              <div class="work-info">
                <h3>제주</h3>
                <span>#JEJU</span>
              </div>
              <img class="img-fluid" src="/resources/images/jeju.png">
            </a>
          </div>
          
          <div class="item travel col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="/travel/design/busan" class="item-wrap fancybox">
              <div class="work-info">
                <h3>부산</h3>
                <span>#BUSAN</span>
              </div>
              <img class="img-fluid" src="/resources/images/busan.png">
            </a>
          </div>
          
          <div class="item travel col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="/travel/design/incheon" class="item-wrap fancybox">
              <div class="work-info">
                <h3>인천</h3>
                <span>#INCHEON</span>
              </div>
              <img class="img-fluid" src="/resources/images/incheon.png">
            </a>
          </div>
          
          <div class="item travel col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="/travel/design/gapyeong" class="item-wrap fancybox">
              <div class="work-info">
                <h3>가평</h3>
                <span>#GAPYEOG</span>
              </div>
              <img class="img-fluid" src="/resources/images/gapyeong.png">
            </a>
          </div>

          <div class="item travel col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="/travel/design/gyeongju" class="item-wrap fancybox">
              <div class="work-info">
                <h3>경주</h3>
                <span>#GYEONGJU</span>
              </div>
              <img class="img-fluid" src="/resources/images/gyeongju.png">
            </a>
          </div>
          
         <div class="item travel col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="/travel/design/seoul" class="item-wrap fancybox">
              <div class="work-info">
                <h3>서울</h3>
                <span>#SEOUL</span>
              </div>
              <img class="img-fluid" src="/resources/images/seoul.png">
            </a>
          </div>
          
          <!-- 일정만들기 -->
          <div class="item use col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>발견</h3>
                <br>
                <span>#가고 싶은 여행장소들을 발견해 보세요.</span>
                <span>TIP: 나만의 여행지 </span>
              </div>
              <img class="img-fluid" src="/resources/images/aa.png" width="400" height="400">
            </a>
            </div>
            
            <div class="item use col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
             <div class="work-info">
                <h3>일정만들기</h3>
                <br>
                <span>#가고 싶은 장소가 있나요?</span><br>
             </div>
              <img class="img-fluid" src="/resources/images/bb.png" width="400" height="400">
            </a>
            </div>
            
            <div class="item use col-sm-6 col-md-4 col-lg-4 mb-4">
              <a href="work-single.html" class="item-wrap fancybox">
             <div class="work-info">
                <h3>지도보기</h3>
                <br>
                <span>#나만의 여행 장소들을 확인해보세요.</span><br>
             </div>
              <img class="img-fluid" src="/resources/images/cc.png" width="400" height="400">
            </a>
          </div>
          
        </div>
      </div>
    </section><!-- End  Works Section -->

    <!-- ======= Testimonials Section ======= -->
    <section class="section pt-0">
      <div class="container">
        <div class="owl-carousel testimonial-carousel">
          <div class="testimonial-wrap">
            <div class="testimonial">
              <img src="/resources/images/mg4.png" alt="Image" class="img-fluid">
              <blockquote>
                <p>빈칸</p>
              </blockquote>
              <p>&mdash; 빈칸</p>
            </div>
          </div>

          <div class="testimonial-wrap">
            <div class="testimonial">
              <img src="/resources/images/mg5.png" alt="Image" class="img-fluid">
              <blockquote>
                <p>빈칸</p>
              </blockquote>
              <p>&mdash; 빈칸</p>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Testimonials Section -->
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer class="footer" role="contentinfo">
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <p class="mb-1">&copy; Copyright travel2021</p>
          <div class="credits">
            Designed by <a href="/admin/index">yeoreosaram</a>
          </div>
        </div>
        <div class="col-sm-6 social text-md-right">
          <a href="#"><span class="icofont-twitter"></span></a>
          <a href="#"><span class="icofont-facebook"></span></a>
          <a href="#"><span class="icofont-dribbble"></span></a>
          <a href="#"><span class="icofont-behance"></span></a>
        </div>
      </div>
    </div>
  </footer>
   
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="/resources/vendor/php-email-form/validate.js"></script>
  <script src="/resources/vendor/aos/aos.js"></script>
  <script src="/resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/resources/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!— Template Main JS File  —>
  <script src="/resources/js/main.js"></script>

</body>

</html>