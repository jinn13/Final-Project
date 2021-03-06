<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<title>main</title>
<script src="../resources/js/notice.js"></script>
<link rel="shortcut icon" href="${ path }/resources/favicon.ico">
</head>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "2024f0f3-d5dc-4352-85c0-193c9d81b123",
    "memberId": "ID", //fill with user id
    "profile": {
    "name": "NAME", //fill with user name
    "mobileNumber": "PHONE", //fill with user phone number
    }
  });
</script>
<!-- End Channel Plugin -->

<div class="container">
	<div class="contents">
		<%@ include file="/WEB-INF/views/common/sideBar.jsp"%>
		<section class="content-wrap">
			<div class="page-tit">
				<h3>FAQ</h3>
				<div class="bread-crumb">
					<a href="${ path }"><i class="material-icons md-16">home</i></a> <a
						href="${ path }/notice/list">About Us</a> <span>FAQ</span>
				</div>
			</div>
			<div class="tab">
				<div class="tab-title">
					<a href="#tab01" class="is-open">??????</a> <a href="#tab02">????????????/??????</a>
					<a href="#tab03">?????????</a> <a href="#tab04">?????????</a>
				</div>
				<div class="tab-content">
					<div class="tab-view is-open" id="tab01">
						<br /> <br /> <br />
						<h3>??????</h3>
						<br />
						<div class="accordian">
							<ul>
								<li><a href="javascript:void(0);"> <strong>???????????????
											????????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											???????????? ????????? ??????????????? ???????????????.<br /> <br /> <a href="#">??? [????????????]
												????????????</a>
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>?????????
											????????? ????????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											???????????? ???????????? ??????????????? ????????? ????????? ????????????, ????????? ????????? ????????? ?????? ??? ????????????. <br />
											<br /> <a href="#">??? [????????? ??????] ????????????</a>
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>????????????
											????????? ????????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											???????????? ????????? ?????? ????????? ??????????????? ??????????????? ????????? ??? ????????????.<br /> <br /> <a
												href="#">??? [????????????] ????????????</a>
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>????????????
											??? ???????????? ??? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											?????? ?????? ????????? ????????? ?????? ??????????????? ????????? ????????????, ????????? ??????????????? ???????????? ??? ????????????.<br />
											<br />
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>????????????
											????????? ????????????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											?????? ???????????? ???????????? ?????? ???????????? ???????????? ????????? ???????????????.<br /> <br />
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>?????????
											???????????? ????????? ????????????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											????????? ?????? ??? ????????? ???????????? ??????????????? ?????? ?????? ??? ?????? ???????????????.<br /> <br />
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>?????????
											?????? ????????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											????????? ?????? ???????????? ??? 12??? ????????? ??????????????? ???????????????.<br /> ??? 12?????? ???????????? 12??? ??????
											?????????(??????????????????)??? ????????? ?????? ????????? ????????? ??????????????? ?????? ?????? ?????????. <br /> ???????????????
											????????? ???????????? ??????????????? ?????????????????????. <br /> <br /> ??????????????? ?????? 2~3??? ????????????
											?????????, ??????, ??????????????? ????????? 4~5??? ????????? ???????????????.
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>????????????
											????????????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											???????????? 5?????? ?????? ?????? ??? ?????????????????????.<br /> 5?????? ????????? 2,500?????? ???????????? ?????? ?????????.
											<br /> <br /> ????????? ??? ???????????? ????????? ????????? ?????? ???????????? ????????? ??? ????????????. <br />
											5?????? ?????? ????????? ?????? ?????? ????????? 3,000?????? ????????????, 5?????? ?????? ????????? ?????? ???????????? ??????
											5,500??? ?????????.
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>???????????????
											??????????????? ?????? ?????? ???????????????. ????????? ?????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											??????????????? ????????? ??? ??? ????????? ?????? ????????? ???????????? ????????? ?????? ?????????????????? ??????????????????.<br /> <br />
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>??????
											???????????? ????????? ???????????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											??????????????? ?????????????????? ?????? ????????? ????????? ??????????????? ?????????.<br /> <br /> ?????? ?????? ?????????
											????????? ????????? ????????????????????? ??????????????? ????????????. <br /> 1:1 ?????? ??????
											????????????(02-123-4567)??? ?????? ?????? ????????? ????????? ????????????.
										</p>
									</div></li>
							</ul>
						</div>
						<br /> <br /> <br />
					</div>
					<div class="tab-view" id="tab02">
						<br /> <br /> <br />
						<h3>????????????/??????</h3>
						<br />
						<div class="accordian">
							<ul>
								<li><a href="javascript:void(0);"> <strong>???????????????
											????????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											???????????? ????????? ??????????????? ???????????????.<br /> <br /> <a href="#">??? [????????????]
												????????????</a>
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>?????????
											????????? ????????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											???????????? ???????????? ??????????????? ????????? ????????? ????????????, ????????? ????????? ????????? ?????? ??? ????????????. <br />
											<br /> <a href="#">??? [????????? ??????] ????????????</a>
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>????????????
											????????? ????????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											???????????? ????????? ?????? ????????? ??????????????? ??????????????? ????????? ??? ????????????.<br /> <br /> <a
												href="#">??? [????????????] ????????????</a>
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>????????????
											??? ???????????? ??? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											?????? ?????? ????????? ????????? ?????? ??????????????? ????????? ????????????, ????????? ??????????????? ???????????? ??? ????????????.<br />
											<br />
										</p>
									</div></li>
						</div>
						<br /> <br /> <br />
					</div>
					<div class="tab-view" id="tab03">
						<br /> <br /> <br />
						<h3>?????????</h3>
						<br />
						<div class="accordian">
							<ul>
								<li><a href="javascript:void(0);"> <strong>????????????
											????????? ????????????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											?????? ???????????? ???????????? ?????? ???????????? ???????????? ????????? ???????????????.<br /> <br />
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>?????????
											???????????? ????????? ????????????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											????????? ?????? ??? ????????? ???????????? ??????????????? ?????? ?????? ??? ?????? ???????????????.<br /> <br />
										</p>
									</div></li>
							</ul>
						</div>
						<br /> <br /> <br />
					</div>
					<div class="tab-view" id="tab04">
						<br /> <br /> <br />
						<h3>?????????</h3>
						<br />
						<div class="accordian">
							<ul>
								<li><a href="javascript:void(0);"> <strong>?????????
											?????? ????????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											????????? ?????? ???????????? ??? 12??? ????????? ??????????????? ???????????????.<br /> ??? 12?????? ???????????? 12??? ??????
											?????????(??????????????????)??? ????????? ?????? ????????? ????????? ??????????????? ?????? ?????? ?????????. <br /> ???????????????
											????????? ???????????? ??????????????? ?????????????????????. <br /> <br /> ??????????????? ?????? 2~3??? ????????????
											?????????, ??????, ??????????????? ????????? 4~5??? ????????? ???????????????.
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>????????????
											????????????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											???????????? 5?????? ?????? ?????? ??? ?????????????????????.<br /> 5?????? ????????? 2,500?????? ???????????? ?????? ?????????.
											<br /> <br /> ????????? ??? ???????????? ????????? ????????? ?????? ???????????? ????????? ??? ????????????. <br />
											5?????? ?????? ????????? ?????? ?????? ????????? 3,000?????? ????????????, 5?????? ?????? ????????? ?????? ???????????? ??????
											5,500??? ?????????.
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>???????????????
											??????????????? ?????? ?????? ???????????????. ????????? ?????? ??????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											??????????????? ????????? ??? ??? ????????? ?????? ????????? ???????????? ????????? ?????? ?????????????????? ??????????????????.<br /> <br />
										</p>
									</div></li>
								<li><a href="javascript:void(0);"> <strong>??????
											???????????? ????????? ???????????????</strong>
								</a>
									<div>
										<i class="icon-answer"></i>
										<p>
											??????????????? ?????????????????? ?????? ????????? ????????? ??????????????? ?????????.<br /> <br /> ?????? ?????? ?????????
											????????? ????????? ????????????????????? ??????????????? ????????????. <br /> 1:1 ?????? ??????
											????????????(02-123-4567)??? ?????? ?????? ????????? ????????? ????????????.
										</p>
									</div></li>
							</ul>
						</div>
						<br /> <br /> <br />
					</div>
				</div>
			</div>
			<h1>?????? ?????? ?????? ????????????????</h1>
			<br />
			<div class="category">
				<ul>
					<li><strong>1 : 1 ??? ???</strong>
						<div class="check-group">
							<!-- <div class="check-box">
						<a href="#" class="btn">????????????</a>
					</div> -->
							<div class="check-box">
								<a href="${ path }/notice/qnalist" class="btn">????????????</a>
							</div>
							<div class="check-box">
								<a href="${ path }/map" class="btn">????????????</a>
							</div>
						</div></li>
				</ul>
			</div>
		</section>
	</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
<script>
    $(() => {
        let sideBarMenu = $('.side-bar ul li');
        let menuPath = ['list', 'faq','qnalist'];
        let menuName = ['????????????', 'FAQ', '1:1 ??????'];
        let menuIcon = ['description', 'quiz', 'headset_mic' ];

        for( let i = 0; i < menuName.length; i++ ) {
            let menuIdx = sideBarMenu.eq(i);

            menuIdx.find('a').attr('href', menuPath[i]);
            menuIdx.find('a > i').text(menuIcon[i]);
            menuIdx.find('a > span').text(menuName[i]);
        }
        sideBarMenu.each(function(idx, el) {
            if(idx == 1) {
                $(this).addClass('current');
            }
        })
    });
    
    
</script>