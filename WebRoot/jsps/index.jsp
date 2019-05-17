<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医者天下</title>
	<%
		pageContext.setAttribute("PATH", request.getContextPath());
	%>

    <!--[if IE]>
		<script src="js/html5.js"></script>
	<![endif]-->

    <base target="_self">
    <link rel="stylesheet" href="${PATH }/static/css/index.css" />
    <script type="text/javascript" src="${PATH }/static/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript">
    	
    	function login(){
    		var n = $('#username').val();
    		var p = $('#pwd').val();
    		if(n==''){
    			alert('请输入用户名');
    		}
    		else if(p==''){
    			alert('请输入密码');
    		}
    		else{
    			$('#login_frm').submit();
    		}
    	}
    	
    	$(function(){
    		$('#querySearch').click(function(){
    			$('#med_form').submit();
    		});
    	});
    	
    </script>
    
</head>
<body>
    <header id="fastTop" class="header">
        <div class="search_box">
            <span class="logo">
                <a href="index.htm">
                    <img src="${PATH }/static/images/logo.jpg"></a>
            </span>
           
            <!-- <div class="keyword">
                <form method="post" id="med_form" action="" onKeyDown="if(event.keyCode==13)return false;">
                    <input type="text" name="name" autocomplete="off" placeholder="请输入医院名称" 
                    	id="search-tips-input" value="">
                    <button type="button" class="btn-doctor" id="querySearch">搜&nbsp;索</button>
                </form>
                <div class="search-suggest-layer" style="display: none; border: 1px #eaeaea solid; margin-top: -2px; width: 466px; background-color: #fff; border-bottom-left-radius: 4px; border-bottom-right-radius: 4px; position: absolute; z-index: 1;"></div>
            </div> -->
            <div class="login">
                <div class="my-doctor">
                	<c:choose>
                		<c:when test="${!empty sessionScope.user }">
                			欢迎您,${sessionScope.user.username }
                		</c:when>
                		<c:otherwise>
                			<div style="float: left;color:#2896f3;">
                		<form id="login_frm" action="${PATH }/login" method="post">
                			<div>用户名：<input type="text" name="username" id="username" style="border: 1px solid #2896f3;"/></div>
                			<div style="margin-top:2px">密码：<input type="password" name="pwd" id="pwd" style="border: 1px solid #2896f3;"/></div>
                		</form>
                		</div>
                		<div style="float: right;line-height:42px;margin-left:15px">
                			<div><input type="button" value="登&nbsp;录" onClick="login()" 
                				style="width:60px;height:40px;cursor:pointer;border: 1px solid #2896f3;color:#2896f3;"></input>
                				
                			</div>
                		</div>
                		</c:otherwise>
                	</c:choose>
                </div>
            </div>
        </div>
    </header>
    <div class="banner">
        <div class="banner-content">
            <ul class="banner-left">
                <a href="#">
                    <li class="active">首页</li>
                </a><a href="${PATH }/jsps/hospital_list.jsp">
                    <li>找医院</li>
                </a><a href="${PATH }/findMedicinerInfo">
                    <li>找医生</li>
                </a>
            </ul>
        </div>
    </div>
    <div class="opacity"></div>
    <div class="carousel-infos">
        <div id="slideBox" class="slideBox">
            <div class="hd car-item">0.
            
				<ul><li class=""></li><li class=""></li><li class="on"></li></ul>
			</div>
            <div class="bd">
				<ul>
					<li style="display: none;"><a href="#" target="_blank"><img src="${PATH }/static/images/banner1.jpg"></a></li>
					<li style="display: none;"><a href="#" target="_blank"><img src="${PATH }/static/images/banner2.jpg"></a></li>
					<li style="display: list-item;"><a href="#" target="_blank"><img src="${PATH }/static/images/banner3.jpg"></a></li>
				</ul>
			</div>
        </div>

        <div class="wrap">
            <div class="container">

                <!-- 推荐医院-->
                <div class="find-hospital">
                    <h3>
                        <ul class="tab">
                            <li class="first-tab">医院推荐</li>

                        </ul>
                        <a id="hos-more" href="hospital/0/hospitals.htm" target="_blank"><span class="more-hos">查看全部<img src="${PATH }/static/images/arrow_normal.png"></span></a></h3>
                    <div class="content" id="cityTab">
                        <ul>
                        	<c:forEach items="${listHos }" var="hos" varStatus="status">
                        	<c:if test="${status.index<3 }">
                            <li class="hospital-detail"><a href="#" target="_blank">
                                <img src="${PATH }/static/images/d31b0ef41bd5ad6ee0d4c29787cb39dbb6fd3c99.jpg" alt="${hos.h_name }" width="230" height="120"></a><p class="hospital-name"><a href="#" title="${hos.h_name }" target="_blank"><span class="span-name">${hos.h_name }</span></a><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><span class="grade-text ">9.8</span><label class="hospital-grade"><span class="grade">${hos.grade }</span><span class="corpt">医保</span></label></p>
                                <p class="appointent_total">
                                    <label class="label-right"><span>${hos.visitCount }</span>&nbsp;人成功预约</label>
                                </p>
                            </li>
                            </c:if>
                            <%-- <li class="hospital-detail"><a href="#" target="_blank">
                                <img src="${PATH }/static/images/d31b0ef41bd5ad6ee0d4c29787cb39dbb6fd3c99.jpg" alt="武汉同济医院" width="230" height="120"></a><p class="hospital-name"><a href="#" title="武汉同济医院" target="_blank"><span class="span-name">武汉同济医院</span></a><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><span class="grade-text ">9.8</span><label class="hospital-grade"><span class="grade">三甲</span><span class="corpt">医保</span></label></p>
                                <p class="appointent_total">
                                    <label class="label-right"><span>100</span>&nbsp;人成功预约</label>
                                </p>
                            </li>
                            
                            <li class="hospital-detail"><a href="#" target="_blank">
                                <img src="${PATH }/static/images/d31b0ef41bd5ad6ee0d4c29787cb39dbb6fd3c99.jpg" alt="武汉同济医院" width="230" height="120"></a><p class="hospital-name"><a href="#" title="武汉同济医院" target="_blank"><span class="span-name">武汉同济医院</span></a><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><span class="grade-text ">9.8</span><label class="hospital-grade"><span class="grade">三甲</span><span class="corpt">医保</span></label></p>
                                <p class="appointent_total">
                                    <label class="label-right"><span>100</span>&nbsp;人成功预约</label>
                                </p>
                            </li> --%>
                            
                            </c:forEach>
                        </ul>
                        <ul class="hospital-info">
                        		<c:forEach items="${listHos }" var="hos">
                            		<li><a href="#" title="${hos.h_name }" target="_blank"><span class="span-hospital ">${hos.h_name }</span></a><label><span class="span-grade">${hos.grade }</span><span class="span-corpt">[医保]</span></label></li>
                      			</c:forEach>
                                <!-- <li><a href="#" title="武汉市第四医院" target="_blank"><span class="span-hospital ">武汉市第四医院</span></a><label><span class="span-grade">三甲</span><span class="span-corpt">[医保]</span></label></li>
                                <li><a href="#" title="武汉市第四医院" target="_blank"><span class="span-hospital ">武汉市第四医院</span></a><label><span class="span-grade">三甲</span><span class="span-corpt">[医保]</span></label></li>
                                <li><a href="#" title="武汉市第四医院" target="_blank"><span class="span-hospital ">武汉市第四医院</span></a><label><span class="span-grade">三甲</span><span class="span-corpt">[医保]</span></label></li>
                                <li><a href="#" title="武汉市第四医院" target="_blank"><span class="span-hospital ">武汉市第四医院</span></a><label><span class="span-grade">三甲</span><span class="span-corpt">[医保]</span></label></li>
                                <li><a href="#" title="武汉市第四医院" target="_blank"><span class="span-hospital ">武汉市第四医院</span></a><label><span class="span-grade">三甲</span><span class="span-corpt">[医保]</span></label></li> -->
                        </ul>
                    </div>
                </div>
                <!-- END推荐医院-->

                <!-- 热门科室-->
                <div class="hot-department">
                    <h3>热门科室</h3>
                    <div class="content">
                        <ul>
                        	<c:forEach items="${listDept }" var="dept">
                            <li class="first-info">
                                <div class="dep-left"><a target="_self" class="dep-title" href="#"><b>${dept.d_name }</b></a></div>
                                <div class="dep-right">
                                	<c:forEach items="${dept.listParDept }" var="parDept">
                                		<a class="dep-item dep-light" href="#" target="_self" title="${parDept.d_name }">${parDept.d_name }</a>
                            		<!-- <a class="dep-item dep-light" href="#" target="_self" title="心血管内科">心血管内科</a>
                                    <a class="dep-item dep-light" href="#" target="_self" title="心血管内科">心血管内科</a>
                                    <a class="dep-item dep-light" href="#" target="_self" title="心血管内科">心血管内科</a>
                                    <a class="dep-item dep-light" href="#" target="_self" title="心血管内科">心血管内科</a>
                                    <a class="dep-item dep-light" href="#" target="_self" title="心血管内科">心血管内科</a>
                                    <a class="dep-item dep-light" href="#" target="_self" title="心血管内科">心血管内科</a>
                                    <a class="dep-item dep-light" href="#" target="_self" title="心血管内科">心血管内科</a>
                                    <a class="dep-item dep-light" href="#" target="_self" title="心血管内科">心血管内科</a> -->
                                    </c:forEach>
                            	</div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <!-- END热门科室-->

                <!-- 优质医生-->
                <div id="excel-doctor-div" class="excel-doctor">
                    <h3>名师名医<a href="mediciner/doctor_list.htm" target="_blank"><span>更多名医<img src="${PATH }/static/images/arrow_normal.png"></span></a></h3>
                    <div class="content slideBox2">
                        <div id="pre-arrow" class="pre-arrow prev">
                            <img data-gray="${PATH }/static/images/pre_disable.png" data-srchover="${PATH }/static/images/pre_hover.png" data-src="${PATH }/static/images/pre_normal.png" src="${PATH }/static/images/pre_disable.png">
                        </div>
                        <div class="doctail-detail bd">
                            <ul id="dictor-list-ul">
                               
                               <c:forEach items="${listMed }" var="med"> 
                                <li class="doctor-first" style="background-color: rgb(249, 249, 249);">
                                	<a href="#" target="_blank">
                                    	<img src="${PATH }/static/images/yisheng1.png">
                                    </a>
                                    <p><a target="_blank" href="#"><span>${med.m_name }</span></a>&nbsp;<span class="doctor-level">${med.title }</span></p>
                                    <p>${med.dept }</p>
                                    <p title="${med.hospital }">${med.hospital }</p>
                                    <p class="btn-appoint">
	                                    <a target="_blank" href="javascript:btnSeq(${med.mid });">
		                                    <span style="border-color: rgb(1, 151, 241); color: rgb(255, 255, 255); background-color: rgb(1, 151, 241);">
		                                    	一键预约
		                                    </span>
	                                    </a>
                                    </p>
                                </li>
                                </c:forEach>
                                <%-- <li class="doctor-first" style="background-color: rgb(249, 249, 249);">
                                	<a href="#" target="_blank">
                                    	<img src="${PATH }/static/images/yisheng1.png">
                                    </a>
                                    <p><a target="_blank" href="#"><span>曹军</span></a>&nbsp;<span class="doctor-level">主任医师</span></p>
                                    <p>心血管内科</p>
                                    <p title="武汉同济医院">武汉同济医院</p>
                                    <p class="btn-appoint"><a target="_blank" href="#"><span style="border-color: rgb(1, 151, 241); color: rgb(255, 255, 255); background-color: rgb(1, 151, 241);">一键</span></a></p>
                                </li>
                                
                                <li class="doctor-first" style="background-color: rgb(249, 249, 249);">
                                	<a href="#" target="_blank">
                                    	<img src="${PATH }/static/images/yisheng1.png">
                                    </a>
                                    <p><a target="_blank" href="#"><span>曹军</span></a>&nbsp;<span class="doctor-level">主任医师</span></p>
                                    <p>心血管内科</p>
                                    <p title="武汉同济医院">武汉同济医院</p>
                                    <p class="btn-appoint"><a target="_blank" href="#"><span style="border-color: rgb(1, 151, 241); color: rgb(255, 255, 255); background-color: rgb(1, 151, 241);">一键</span></a></p>
                                </li>
                                
                                <li class="doctor-first" style="background-color: rgb(249, 249, 249);">
                                	<a href="#" target="_blank">
                                    	<img src="${PATH }/static/images/yisheng1.png">
                                    </a>
                                    <p><a target="_blank" href="#"><span>曹军</span></a>&nbsp;<span class="doctor-level">主任医师</span></p>
                                    <p>心血管内科</p>
                                    <p title="武汉同济医院">武汉同济医院</p>
                                    <p class="btn-appoint"><a target="_blank" href="#"><span style="border-color: rgb(1, 151, 241); color: rgb(255, 255, 255); background-color: rgb(1, 151, 241);">一键</span></a></p>
                                </li> --%>
                               
                            </ul>
                        </div>
                        <div id="next-arrow" class="next-arrow next">
                            <img data-gray="${PATH }/static/images/arrow_disable.png" data-srchover="${PATH }/static/images/arrow_hover.png" data-src="${PATH }/static/images/arrow_normal.png" src="${PATH }/static/images/arrow_disable.png">
                        </div>
                    </div>
                </div>
                <!-- END优质医生-->


                

            </div>
            <div class="right-sidebar-info">
                <!-- 右侧统计信息 -->
                <div class="res-info">
                    <div class="city-info">
                        <h3 class="res-title">全国已开通</h3>
                     <i class="num">${hospatilVo.hosCount }</i>家医院
                    </div>
                    <div class="num-info">
                        <h3 class="res-title">可预约医生数</h3>
                        <!-- 循环可预约医生数量 -->
                        
                        	<div class="img-container">
                        		 <img src="${PATH }/static/images/number_bg.png" class="number-bg "><i class="num">${hospatilVo.medCount }</i>
                        	</div>
                        
                    </div>
                    <div class="num-info">
                        <h3 class="res-title">累计服务人数</h3>
                        <!-- 累计服务人数 -->
                       		
                        	<div class="img-container">
                           		<img src="${PATH }/static/images/number_bg.png" class="number-bg "><i class="num">${hospatilVo.appCount }</i>
                        	</div>
                        
                    </div>
                </div>
                <!-- END右侧统计信息 -->

                <!-- 合作机构 -->
                <div class="news">
                    <h3 class="news-title">合作机构</h3>
                    <ul class="news-list">
                        <li>
                            <a href="#" target="_blank">
                            	武汉协和医院
                            </a>
                           
                        </li>
                       <li>
                            <a href="#" target="_blank">	
								武汉市第四医院
                            </a>
                        </li>
                         <li>
                            <a href="#" target="_blank">            
								武汉市第九医院
                            </a>
                        </li>
                         <li>
                            <a href="#" target="_blank">
								武汉市第六医院
                            </a>
                        </li>
                         <li>
                            <a href="#" target="_blank">
								武汉市商业职工医院
                            </a>
                        </li>
                    </ul>
                </div>
               <!-- END合作机构 -->
            </div>
        </div>
    </div>

    <footer id="footer-three" class="footer-box footer-three clear path" data-src="http://dpp.bdimg.com/static/pc/201604261639/asset" data-href="" data-api="http://yi.baidu.com" data-passport="https://passport.baidu.com">
        <div class="footer-con">
            <div class="footer-info-url">
                <dd class="fo-link">
                    <a href="#" target="_blank"><span>帮助</span>|</a>
                    <a href="#" target="_blank"><span>用户协议</span>|</a>
                    <a href="#" target="_blank"><span>意见反馈</span></a>
                    <a href="#" target="_blank"><span>©2016 Mstanford &nbsp;&nbsp;隐私条款</span></a>
                </dd>
            </div>
    </footer>



    <script src="${PATH }/static/js/jquery-1.11.2.min.js"></script>

    <script src="${PATH }/static/js/uni_login_wrapper.js"></script>

       <script src="${PATH }/static/js/jquery.SuperSlide.2.1.1.js"></script>

    <script type="text/javascript">
        jQuery(".slideBox").slide({ mainCell: ".bd ul", autoPlay: true});

        jQuery(".slideBox2").slide({ mainCell: ".bd ul", vis: 4, scroll: 4, effect: "left", autoPlay: false ,pnLoop:false});

        /**
                       一键预约
        */
    	function btnSeq(mid){
        	if("${sessionScope.user }"!=""){
        		 $.ajax({
        			url:"${PATH}/appointSeq",
        			type:"GET",
        			data:{u_id:"${sessionScope.user.uid}",patient_id:"${sessionScope.user.uid}",m_id:mid},
        			success:function(result){
        				if(result.code==200){
        					alert("预约成功");
        					document.location.reload();
        				}else{
        					alert("预约失败");
        				}
    				}
        		}); 
        	}else{
        		alert("您还未登陆!请登陆后进行预约");
        	}
    	}

    </script>
</body>
</html>