<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="project.com.model.ScoreVO" %>
<%
   ArrayList<ScoreVO> slist = (ArrayList<ScoreVO>) request.getAttribute("list");
%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<title>식당리뷰</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<jsp:include page="css.jsp"></jsp:include>
</head>
<body>
	<div id="colorlib-page">
		<div id="colorlib-main">
			<section class="ftco-section ftco-no-pt ftco-no-pb">
				<div class="container">
					<div class="row d-flex">
						<div class="col-xl-12 py-5 px-md-5">
							<div class="row pt-md-4">
								<div class="col-md-12 py-5">
									<h2 style="text-align: center">식당 순위(가제)</h2>
								</div>
								<div class="col-md-12 py-3">
									<form action="#" class="search-form">
										<div class="form-group">
											<span class="icon icon-search"></span> <input type="text"
												class="form-control"
												placeholder="Type a keyword and hit enter">
										</div>
									</form>
								</div>
								
								<div class="col-md-12 py-5">
									<nav>
										<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
											<a class="nav-item nav-link active" id="nav-home-tab"
												data-toggle="tab" href="rateTotal.do" role="tab"
												aria-controls="nav-home" aria-selected="true">총점</a> <a
												class="nav-item nav-link" id="nav-profile-tab"
												data-toggle="tab" href="#nav-profile" role="tab"
												aria-controls="nav-profile" aria-selected="false">맛</a>
											<a class="nav-item nav-link" id="nav-contact-tab"
												data-toggle="tab" href="#nav-contact" role="tab"
												aria-controls="nav-contact" aria-selected="false">거리</a>
											<a class="nav-item nav-link" id="nav-about-tab"
												data-toggle="tab" href="#nav-about" role="tab"
												aria-controls="nav-about" aria-selected="false">회전율</a>
										</div>
								</div>
								<div class="col-md-12  py-1">
								<nav class="navbar navbar-expand-lg navbar-left">
									<div class="collapse navbar-collapse" id="navbarNavDropdown">
										<ul class="navbar-nav">
											<li class="nav-item dropdown"><a class="nav-link" href="#"
												id="navbarDropdownMenuLink" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false"> Explore <span
													class="icon-arrow-down"></span>
											</a>
												<div class="dropdown-menu"
													aria-labelledby="navbarDropdownMenuLink">
													<a class="dropdown-item" href="#">Action</a> <a
														class="dropdown-item" href="#">Another action</a> <a
														class="dropdown-item" href="#">Something else here</a>
												</div>
											</li>
										</ul>
									</div>
								</nav>
							</div>
								<!--  -->
								<%
									for (ScoreVO vo : slist) { 	int i=0;
									%>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_<%=i+1%>.jpg);"><%=i + 1%></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">식당이름<%= vo.getPname() %></a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span><i class="icon-calendar mr-2"></i>June 28,
														2019</span> <span><a href="single.html"><i
															class="icon-folder-o mr-2"></i>Travel</a></span> <span><i
														class="icon-comment2 mr-2"></i>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<%
									}
								%>
								<!--  -->
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_1.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">A Loving Heart is the Truest
													Wisdom</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span><i class="icon-calendar mr-2"></i>June 28,
														2019</span> <span><a href="single.html"><i
															class="icon-folder-o mr-2"></i>Travel</a></span> <span><i
														class="icon-comment2 mr-2"></i>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<!--  -->
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_2.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">Great Things Never Came from
													Comfort Zone</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span><i class="icon-calendar mr-2"></i>June 28,
														2019</span> <span><a href="single.html"><i
															class="icon-folder-o mr-2"></i>Travel</a></span> <span><i
														class="icon-comment2 mr-2"></i>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_3.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">Paths Are Made by Walking</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Lifestyle</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_4.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">The Secret of Getting Ahead is
													Getting Started</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Nature</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_5.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">You Can't Blame Gravity for
													Falling in Love</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Lifestyle</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_6.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">You Can't Blame Gravity for
													Falling in Love</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Travel</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_7.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">You Can't Blame Gravity for
													Falling in Love</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Travel</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_8.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">You Can't Blame Gravity for
													Falling in Love</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span><i class="icon-calendar mr-2"></i>June 28,
														2019</span> <span><a href="single.html"><i
															class="icon-folder-o mr-2"></i>Travel</a></span> <span><i
														class="icon-comment2 mr-2"></i>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_9.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">You Can't Blame Gravity for
													Falling in Love</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span><i class="icon-calendar mr-2"></i>June 28,
														2019</span> <span><a href="single.html"><i
															class="icon-folder-o mr-2"></i>Travel</a></span> <span><i
														class="icon-comment2 mr-2"></i>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_10.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">You Can't Blame Gravity for
													Falling in Love</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Lifestyle</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_11.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">You Can't Blame Gravity for
													Falling in Love</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span><i class="icon-calendar mr-2"></i>June 28,
														2019</span> <span><a href="single.html"><i
															class="icon-folder-o mr-2"></i>Travel</a></span> <span><i
														class="icon-comment2 mr-2"></i>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(./Resouces/images/image_12.jpg);"></a>
										<div class="text text-2 pl-md-4">
											<h3 class="mb-2">
												<a href="single.html">You Can't Blame Gravity for
													Falling in Love</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span><i class="icon-calendar mr-2"></i>June 28,
														2019</span> <span><a href="single.html"><i
															class="icon-folder-o mr-2"></i>Travel</a></span> <span><i
														class="icon-comment2 mr-2"></i>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
							</div>
							<!-- END-->
							<div class="row">
								<div class="col">
									<div class="block-27">
										<ul>
											<li><a href="#">&lt;</a></li>
											<li class="active"><span>1</span></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">&gt;</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- END COL -->
				</div>
		</div>
		</section>
	</div>
	<!-- END COLORLIB-MAIN -->
	</div>
	<!-- END COLORLIB-PAGE -->
	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	<jsp:include page="javaScript.jsp"></jsp:include>
</body>
</html>