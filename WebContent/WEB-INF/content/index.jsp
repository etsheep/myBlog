<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>呵呵</title>
<jsp:include page="inc/incLib.jsp" ></jsp:include>
</head>

<body>
<!-- Top Bar Start -->
<jsp:include page="inc/topbar.jsp" ></jsp:include>
<!-- Top Bar End -->
<!-- Header Start -->
<div id="header">
	<div class="inner">
    	<!-- Top Header Section Start -->
        <jsp:include page="inc/tophead.jsp" ></jsp:include>
        <!-- Top Header Section End -->
        <div class="clear"></div>
        <!-- Navigation Start -->
        <jsp:include page="inc/nav.jsp" ></jsp:include>
        <!-- Navigation End -->
        <div class="clear"></div>
        <!-- Banner Section Start -->
        <div class="banner-sec">
        	<!-- Banner Start -->
            <div class="banner">
            	<div class="slider-wrapper theme-default">
                    <div id="slider" class="nivoSlider">
                        <a href="#"><img src="images/banner1.jpg" title="#banner1" alt="" /></a>
                        <a href="#"><img src="images/banner2.jpg" title="#banner2" alt="" /></a>
                        <a href="#"><img src="images/banner3.jpg" title="#banner3" alt="" /></a>
                        <a href="#"><img src="images/banner4.jpg" title="#banner4" alt="" /></a>
                    </div>
                    <!-- Banner Caption Start -->
                    <div id="banner1" class="nivo-html-caption">
                    	<h4 class="white">Book of the Month</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean commodo dolor at sapien luctus non venenatis dui</p>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner2" class="nivo-html-caption">
                    	<h4 class="white">Book of the Month</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean commodo dolor at sapien luctus non venenatis dui</p>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner3" class="nivo-html-caption">
                    	<h4 class="white">Book of the Month</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean commodo dolor at sapien luctus non venenatis dui</p>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner4" class="nivo-html-caption">
                    	<h4 class="white">Book of the Month</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean commodo dolor at sapien luctus non venenatis dui</p>
                    </div>
                    <!-- Banner Caption End -->
                </div>
            </div>
            <!-- Banner End -->
            <!-- Welcome Section Start -->
<!--             <div class="welcome"> -->
<!--             	<h4 class="sec-head backcolr">Welcome to Church</h4> -->
<!--                 <div class="welc-text"> -->
<!--                 	<a href="#"><img src="images/welcome.jpg" alt="" /></a> -->
<!--                     <p> -->
<!--                     	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean commodo dolor at sapien luctus non venenatis dui lacinia. Phasellus viverra, orci ut lacinia varius.  Phasellus viverra, orci ut lacinia varius. -->
<!--                     </p> -->
<!--                     <ul class="actions"> -->
<!--                     	<li><a href="#" class="txthover"><span class="join">&nbsp;</span>Join Us</a></li> -->
<!--                         <li><a href="#" class="txthover"><span class="sermons">&nbsp;</span>Sermons</a></li> -->
<!--                         <li><a href="#" class="txthover"><span class="support">&nbsp;</span>Support</a></li> -->
<!--                     </ul> -->
<!--                     <div class="clear"></div> -->
<!--                 </div> -->
					<div class="main_left" >
						<div class="side_nav">
							<ul>
								<li class="select"><a href="#" name="all">全部分类</a>
								</li>
								<li><a href="#" name="mobile">移动开发</a>
								</li>
								<li><a href="#" name="web">Web前端</a>
								</li>
								<li><a href="#" name="enterprise">架构设计</a>
								</li>
								<li><a href="#" name="code">编程语言</a>
								</li>
								<li><a href="#" name="www">互联网</a>
								</li>
								<li><a href="/database/index.html" name="database">数据库</a>
								</li>
								<li><a href="/system/index.html" name="system">系统运维</a>
								</li>
								<li><a href="/cloud/index.html" name="cloud">云计算</a>
								</li>
								<li><a href="/software/index.html" name="software">研发管理</a>
								</li>
								<li><a href="/other/index.html" name="other">综合</a>
								</li>
							</ul>
						</div
					</div>
            <!-- Welcome Section End -->
<!--             <div class="clear"></div> -->
<!--         </div> -->
        <!-- Banner Section End -->
        <div class="clear"></div>
    </div>
</div>
<!-- Header End -->
<!-- Content Section Start -->
<div class="main_center">
	<div class="blog_list" >
		<h1>
			<a href="#" target="_blank" >标题党!</a>
		</h1>
		<dl>
			<dt>
				<a href="#" target="_blank">
					<img alt="头像党!" src="">
				</a>
			</dt>
			<dd>
				内容党！
			</dd>
		</dl>
		<p>
			<a class="tag" href="#" target="_blank">标签党1</a>
			<a class="tag" href="#" target="_blank">标签党2</a>
		</p>
		<div class="about_info">
			<span class="f1">
				<a href="#" target="_blank" class="user_name">sheep</a>
				<span class="time">10小时前</span>
				<a href="#" target="_blank" class="view">阅读次数</a>
				<a href="#" target="_blank" class="comment">评论次数</a>
			</span>
		</div>
	</div>
	<div class="blog_list">
		<h1>
			<a href="#" target="_blank">标题党!</a>
		</h1>
		<dl>
			<dt>
				<a href="#" target="_blank">头像党!
					<img alt="" src="">
				</a>
			</dt>
			<dd>
				内容党！
			</dd>
		</dl>
		<p>
			<a class="tag" href="#" target="_blank">标签党1</a>
			<a class="tag" href="#" target="_blank">标签党2</a>
		</p>
		<div class="about_info">
			<span class="f1">
				<a href="#" target="_blank" class="user_name">sheep</a>
				<span class="time">10小时前</span>
				<a href="#" target="_blank" class="view">阅读次数</a>
				<a href="#" target="_blank" class="comment">评论次数</a>
			</span>
		</div>
	</div>
	<div class="blog_list">
		<h1>
			<a href="#" target="_blank">标题党!</a>
		</h1>
		<dl>
			<dt>
				<a href="#" target="_blank">头像党!
					<img alt="" src="">
				</a>
			</dt>
			<dd>
				内容党！
			</dd>
		</dl>
		<p>
			<a class="tag" href="#" target="_blank">标签党1</a>
			<a class="tag" href="#" target="_blank">标签党2</a>
		</p>
		<div class="about_info">
			<span class="f1">
				<a href="#" target="_blank" class="user_name">sheep</a>
				<span class="time">10小时前</span>
				<a href="#" target="_blank" class="view">阅读次数</a>
				<a href="#" target="_blank" class="comment">评论次数</a>
			</span>
		</div>
	</div>
	<div class="blog_list">
		<h1>
			<a href="#" target="_blank">标题党!</a>
		</h1>
		<dl>
			<dt>
				<a href="#" target="_blank">
					<img alt="头像党!" src="">
				</a>
			</dt>
			<dd>
				内容党！
			</dd>
		</dl>
		<p>
			<a class="tag" href="#" target="_blank">标签党1</a>
			<a class="tag" href="#" target="_blank">标签党2</a>
		</p>
		<div class="about_info">
			<span class="f1">
				<a href="#" target="_blank" class="user_name">sheep</a>
				<span class="time">10小时前</span>
				<a href="#" target="_blank" class="view">阅读次数</a>
				<a href="#" target="_blank" class="comment">评论次数</a>
			</span>
		</div>
	</div>
	<div class="blog_list">
		<h1>
			<a href="#" target="_blank">标题党!</a>
		</h1>
		<dl>
			<dt>
				<a href="#" target="_blank">
					<img alt="头像党!" src="">
				</a>
			</dt>
			<dd>
				内容党！
			</dd>
		</dl>
		<p>
			<a class="tag" href="#" target="_blank">标签党1</a>
			<a class="tag" href="#" target="_blank">标签党2</a>
		</p>
		<div class="about_info">
			<span class="f1">
				<a href="#" target="_blank" class="user_name">sheep</a>
				<span class="time">10小时前</span>
				<a href="#" target="_blank" class="view">阅读次数</a>
				<a href="#" target="_blank" class="comment">评论次数</a>
			</span>
		</div>
	</div>
	<div class="blog_list">
		<h1>
			<a href="#" target="_blank">标题党!</a>
		</h1>
		<dl>
			<dt>
				<a href="#" target="_blank">头像党!
					<img alt="" src="">
				</a>
			</dt>
			<dd>
				内容党！
			</dd>
		</dl>
		<p>
			<a class="tag" href="#" target="_blank">标签党1</a>
			<a class="tag" href="#" target="_blank">标签党2</a>
		</p>
		<div class="about_info">
			<span class="f1">
				<a href="#" target="_blank" class="user_name">sheep</a>
				<span class="time">10小时前</span>
				<a href="#" target="_blank" class="view">阅读次数</a>
				<a href="#" target="_blank" class="comment">评论次数</a>
			</span>
		</div>
	</div>
</div>
<!-- Content Section End -->
<!-- Scroller Section Start -->
<div id="scroller-sec">
	<div class="inner">
    	<div class="scroll-sec">
        	<a id="logoPrevious">Previous</a>
            <div id="logoscroll" class="scroller">
            	<ul>
                	<li><a href="#"><img src="images/logo1.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo2.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo3.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo4.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo5.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo1.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo2.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo1.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo2.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo3.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo4.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo5.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo1.gif" alt="" /></a></li>
                    <li><a href="#"><img src="images/logo2.gif" alt="" /></a></li>
                </ul>
            </div>
            <a id="logoNext">Next</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- Scroller Section End -->
<!-- Footer Start -->
<div id="footer">
	<div class="inner">
    	<!-- Widget PlaceHolder Start -->
        <div class="widget-placeholder">
        	<!-- Text Widget Start -->
        	<div class="widget text-widget">
            	<a href="#"><img src="images/logo-foot.png" alt="" /></a>
                <br />
                <br />
                <p>
                	P.O Box 1234<br />
                    Your City, City Name and Code 12345<br />
                    (800) 12-34567 | Fax: (123) 345-6789<br />
                    Email: <a href="mailto:email@yourcompany.com">Email@yourcompany.com</a><br />
                </p>
            </div>
            <!-- Text Widget End -->
            <!-- Social Network Start -->
            <div class="widget social-network">
            	<h5 class="white">Follow Us</h5>
                <ul>
                	<li><a href="#"><img src="images/tweeter-icon.png" alt="" /></a></li>
                    <li><a href="#"><img src="images/facebook-icon.png" alt="" /></a></li>
                    <li><a href="#"><img src="images/vimeo-icon.png" alt="" /></a></li>
                    <li><a href="#"><img src="images/lastfm-icon.png" alt="" /></a></li>
                    <li><a href="#"><img src="images/myspace-icon.png" alt="" /></a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <!-- Social Network End -->
        </div>
        <!-- Widget PlaceHolder End -->
        <!-- Widget PlaceHolder Start -->
        <div class="widget-placeholder">
        	<!-- Blog Roll Start -->
        	<div class="widget blogroll">
            	<h4 class="white">Blog Roll</h4>
                <ul>
                	<li><a href="#">Child Protection<span>(65)</span></a></li>
                    <li><a href="#">Monthly Sermons Sets<span>(13)</span></a></li>
                    <li><a href="#">Weekly Service<span>(05)</span></a></li>
                    <li><a href="#">About Pastor<span>(02)</span></a></li>
                    <li><a href="#">Blog Admin<span>(01)</span></a></li>
                    <li><a href="#">Videos<span>(12)</span></a></li>
                </ul>
            </div>
            <!-- Blog Roll End -->
        </div>
        <!-- Widget PlaceHolder End -->
        <!-- Widget PlaceHolder Start -->
        <div class="widget-placeholder">
        	<!-- Latest Tweets Start -->
        	<div class="widget latest-tweets">
            	<h4 class="white">Latest Tweets</h4>
                <div class="tweet">
                	<a href="#">@tamasgergocs</a> Thanks for posting the photo, Tamás! Let us know what you think about the book's content! Let us know what you think about the book #smbook
31 day ago
                </div>
                <a href="#" class="follow-tweet">Follow Us On Twitter</a>
            </div>
            <!-- Latest Tweets End -->
        </div>
        <!-- Widget PlaceHolder End -->
        <!-- Widget PlaceHolder Start -->
        <div class="widget-placeholder">
        	<!-- Contact Form Start -->
        	<div class="widget contact-form">
	            <h4 class="white">Latest Tweets</h4>
            	<ul>
                	<li><input type="text" class="bar" value="Name" /></li>
                    <li><input type="text" class="bar" value="Email" /></li>
                    <li><textarea rows="" cols="">Message</textarea></li>
                    <li><button class="backcolr">Submit</button></li>
                </ul>
            </div>
            <!-- Contact Form End -->
        </div>
        <!-- Widget PlaceHolder End -->
        <div class="clear"></div>
    </div>
    <!-- Copyrights Start -->
    <div class="copyrights">
    	<div class="inner">
        	<!-- Copyrights Text Start -->
        	<p>&copy; Copyright &copy; 2013.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
            <!-- Copyrights Text End -->
            <!-- Go To Top Start -->
            <a href="#top" class="top">Back to top</a>
            <!-- Go To Top Start -->
            <div class="clear"></div>
        </div>
    </div>
    <!-- Copyrights End -->
</div>
<!-- Footer End -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>