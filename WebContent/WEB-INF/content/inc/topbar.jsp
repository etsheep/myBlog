<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div id="top-bar">
	<div class="inner">
    	<!-- Top Bar Posts Start -->
    	<div class="small-posts">
        	<p>Welcome to...</p>
        	
        </div>
        <!-- Top Bar Posts End -->
		<!-- Top Links Start -->
		<div class="search">
                    <ul>
                    	<li><input type="text" class="bar" placeholder="搜索"/></li>
                        <li><input type="button" class="go backcolr" value="Go" /></li>
                    </ul>
                </div>
        <div class="toplinks">
        	<%if (session.getAttribute("user") == null){  %>
        	<a href="javascript:void(0)" class="loginbtn" id="loginbtn">登陆</a>
            <!-- Login Box Start -->
            <div class="loginbox">
            	<h3 class="upper">用户登陆</h3>
                <ul>
                	<span style="color: red;" id="loginTips"></span>
                	<li class="name">
                		<input type="text" placeholder="用户名" class="bar" name="userName" id="userName"/>
                	</li>
                    <li class="password"><input type="password" placeholder="密码" class="bar" name="password" id="password"/></li>
                </ul>
                <div class="btns-sec">
                	<button class="backcolr dark" onclick="login()">登陆</button>
                </div>
            </div>
            <!-- Login Box End -->
            <!-- Register Box Start -->
            <a href="javascript:void(0)" class="loginbtn" id="registerbtn">注册</a>
            <div class="registerbox">
            	<h3 class="upper">用户注册</h3>
                <ul>
                	<span style="color: red;" id="checkNameTips"></span>
                	<li class="name">
                		<input type="text" placeholder="用户名" class="barName" id="regName" onblur="checkName()"/>
                		<img alt="" src="" id="checkNamePic">
                	</li>
                    <span style="color: red;" id="checkPassTips"></span>
                    <li class="password" >
                    	<input type="password" placeholder="密码" class="bar" id="regPass" />
                    	<img alt="" src="" id="checkPassPic">
                    	
                    </li>
                    <li class="password"><input type="password" placeholder="确认密码" class="bar" id="confirmRegPass" onblur="checkPass()"/></li>
                </ul>
                <div class="btns-sec">
                	<button class="backcolr dark" onclick="register()">注册</button>
                </div>
            </div>
          <%  }else{ %>
         	<input name="userId" id="userId" type="hidden" value="${sessionScope.user.userId }">
          	<a href="javascript:void(0)" class="loginbtn" id="loginbtn" style="float: left">${sessionScope.user.userName }</a>
          	<a href="javascript:void(0)" class="loginbtn" id="loginbtn" onclick="loginOut()" style="float: right">退出</a>
          <% }%>
            <!-- Register Box End -->
            <!-- Top Links Start -->
<!--             <ul class="top-links"> -->
<!--             	<li><a href="#">Calender</a></li> -->
<!--                 <li><a href="#">Sermons</a></li> -->
<!--                 <li><a href="#">Service</a></li> -->
<!--                 <li><a href="#">Map/Directions</a></li> -->
<!--                 <li><a href="#">Giving</a></li> -->
<!--             </ul> -->
            <!-- Top Links End -->
        </div>
        <!-- Top Links End -->
        <div class="clear"></div>
    </div>
</div>

<script type="text/javascript">
	var path = "${pageContext.request.contextPath}";
	$().ready(function(){
		toggle();
	});
	
	function toggle(){
		$("#loginbtn").click(function(){
			if ($(".registerbox").css("display") === "block"){
				$(".registerbox").slideToggle();
			}
			$(".loginbox").slideToggle();
		});
		$("#registerbtn").click(function(){
			if ($(".loginbox").css("display") === "block"){
				$(".loginbox").slideToggle();
			}
			$(".registerbox").slideToggle();
		});
	}
	
	
	function login(){
		var userName = $("#userName").val();
		var password = $("#password").val();
		if ($.trim(userName) === "" || $.trim(password) === ""){
			$("#loginTips").text("用户名或者密码不能为空");			
		}else{
			$("#loginTips").text("");
			$.ajax({
				url : path + "/login",
				type : "POST",
				dataType : "json",
				data : {userName : userName, password : password},
				success : function(result){
					if (result.success){
						location.reload();
					}else{
						$("#loginTips").text("用户名或者密码错误");	
					}
				}
			})
		}
	}
	
	function loginOut(){
		$.ajax({
				url : path + "/loginOut",
				success : function(){
					location.href = path + "/index";
				}
			});
	}
	
	
// 	function register(){
// 		var userName = $("#regName").val();
// 		var password = $("#regPass").val();
// 		var confirmPassword = $("#confirmRegPass").val();
// 		if ()
// 	}

	function checkName(){
		var r = false;
		var userName = $("#regName").val();
		if ($.trim(userName) !== ""){
			$("#checkNamePic").attr("src",path + "/images/ajax-loader.gif");
			$("#checkNamePic").show();
			$.ajax({
				url : path + "/checkName",
				data : {userName : userName},
				dataType : "json",
				type : "POST",
				async : false,
				success : function(result){
					if (result.success){
						$("#checkNameTips").text("");
						$("#checkNamePic").attr("src",path + "/images/true.jpg");
						r = true; 
					}else{
						$("#checkNameTips").text(result.msg);
						$("#checkNamePic").attr("src",path + "/images/false.png");
						r = false;
					}
				}
			});
		}
		return r;
	}
	
	function checkPass(){
		var password = $("#regPass").val();
		var confirmPass = $("#confirmRegPass").val();
		if ($.trim(password) !== ""){
			if (password === confirmPass){
				$("#checkPassTips").text("");
				$("#checkPassPic").attr("src",path + "/images/true.jpg");
				$("#checkPassPic").show();
				return true;
			}else{
				$("#checkPassTips").text("两次输入的密码不一致");
				$("#checkPassPic").attr("src",path + "/images/false.png");
				$("#checkPassPic").show();
				return false;
			}
		}
	}
	
	function register(){
		var userName = $("#regName").val();
		var password = $("#regPass").val();
		var confirmPass = $("#confirmRegPass").val();
		if ($.trim(userName) === ""){
			$("#checkNameTips").text("请输入正确的用户名");
			$("#checkNamePic").attr("src",path + "/images/false.png");
			$("#checkNamePic").show();
			return false;
		}
		if ($.trim(password) === ""){
			$("#checkPassTips").text("请输入正确的密码");
			$("#checkPassPic").attr("src",path + "/images/false.png");
			$("#checkPassPic").show();
			return false;
		}
		
		if (checkName() && checkPass()){
			$.ajax({
				url : path + "/register",
				type : "POST",
				dataType : "json",
				data : {userName : userName, password : password},
				success : function(result){
					if (result.success){
					var d = dialog({
    					content: '注册成功，正在为您跳转...'
					});
					d.show();
					setTimeout(function () {
    					d.close().remove();
    					location.reload();
					}, 3000);					
					}else{
						$("#checkNamePic").text(result.msg);	
					}
				}
			})
		}
		
	}
</script>