<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>医者天下doctor_detail.jsp</title>
	<%
		pageContext.setAttribute("PATH", request.getContextPath());
	%>
    <base target="_self">
    <link rel="stylesheet" href="${PATH }/static/css/doctor_detail.css" />
    <style>
        .header .top-box .top-icon-img {
            width: 13px;
            height: 13px;
            vertical-align: middle;
            margin-bottom: 3px;
        }

        .header .top-box .sign a {
            color: #0c81f8;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header class="header">
        <header id="fastTop" class="header" style="height: 100px;">
            <div class="search_box">
                <span class="logo">
                    <a href="index.htm">
                        <img src="${PATH }/static/images/logo.jpg"></a>
                </span>
                <input type="hidden" id="current-area-info" data-province="16" data-city="371" data-region="0" data-provtag="0" data-value="1">
            </div>
        </header>
    </header>
    
<div class="wrap">
    <div class="ys-doctor-detail">
        <section class="container-crumb ys-util-text-auxiliary">
            <h5><a class="ys-util-text-min ys-util-text-auxiliary a-hover" href="index.htm">首页</a></h5>
            &nbsp;&gt;&nbsp;<h5>
                <label class="ys-util-text-min ys-util-text-auxiliary">"曹军"医生个人主页</label></h5>
        </section>
        <div class="ys-util-bg-gray container-box">
            <article class="container-frame">
                <section class="container-summary">
                    <div class="summary-img ys-util-img"><a class="ys-img-lazy-frame" href="javascript:void(0);">
                        <img class="" src="${PATH }/static/images/yisheng1.png" data-img-lazy-src="${PATH }/static/images/images/yisheng1.png" style="height: 100%;"></a></div>
                    <div class="summary-list">
                        <div class="summary-row" style="line-height: 16px;">
                            <h1 class="ys-util-text-medium">曹军</h1>
                            <a href="#" target="_blank">
                                <img class="ys-icon-image ys-util-margin-l5" src="${PATH }/static/images/pic_identify_bdys.png" alt="认证医生"><span class="identify-text ys-util-text-min ys-util-text-auxiliary only-one-line a-hover">认证医生</span></a><label class="ys-util-margin-l5"><span class="ys-util-margin-l5">主任医师</span><span class="ys-util-margin-l5">/&nbsp;男</span></label></div>
                        <div class="summary-row ys-util-margin-t12">
                            <span class="container-comment-star">

                                <img src="${PATH }/static/images/pic_star_light.png" class="ys-star-small">

                                <img src="${PATH }/static/images/pic_star_light.png" class="ys-star-small">

                                <img src="${PATH }/static/images/pic_star_light.png" class="ys-star-small">

                                <img src="${PATH }/static/images/pic_star_light.png" class="ys-star-small">

                                <img src="${PATH }/static/images/pic_star_light_gray.png" class="ys-star-small">
                            </span>
                            <span class="ys-util-text-primary ys-util-text-medium summary-comment-score ys-util-margin-r20">9.0</span><label class="ys-util-text-secondary ys-util-margin-r10">医生态度<span class="ys-util-margin-l6 ys-util-text-primary">9.0</span></label><label class="ys-util-text-secondary">治疗效果<span class="ys-util-margin-l6 ys-util-text-primary">7.0</span></label>
                        </div>
                        <div class="summary-row ys-util-margin-t12"><span class="ys-util-text-normal ys-util-margin-r10"><a class="a-hover" target="_blank" href="#">武汉协和医院</a></span><span class="ys-util-text-normal ys-util-margin-r10"><a class="a-hover" target="_blank" href="#">儿科</a></span></div>
                        <div class="summary-row ys-util-margin-t5 doctor-goodat">
                            <h6 class="ys-util-text-normal ys-util-text-secondary">擅长：</h6>
                            <label class="ys-util-text-normal" id="goodat-label">小儿麻痹</label></div>
                    </div>
                </section>
            </article>

        </div>
        <div class="map-layer" id="map-layer">
            <div class="container-tab-content">
                <article class="container-main">
                    <!-- Tab页：医生详情 -->
                    <div id="doctorInfo" class="tab-doctorInfo">
                        <div class="doctor-time">
                            <article class="select-card">
                                <h3 class="ys-util-text-medium" id="schedule-anchor">选择就诊时间</h3>
                                <div class="table">
                                    <div class="schedule-left">
                                        <table class="schedule">
                                            <tbody>
                                                <tr>
                                                    <th class="ph">
                                                        <div class="inner-border">就诊时段</div>
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <td class="ph">
                                                        <div class="inner-border">上午</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="ph">
                                                        <div class="inner-border">下午</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="ph">
                                                        <div class="inner-border">晚上</div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="schedule-main">
                                        <!-- 向左箭头替代方案
        <i class="left-arrow"></i> -->
                                        <div class="arrow-bar left-arrow-bar">
                                            <i></i>
                                        </div>
                                        <div class="schedule-main-outer">
                                            <table id="f" class="schedule" style="">
                                                <tbody>
                                                    <tr>
                                                        <!--<th class="ph">就诊时段</th>-->
												
                                                        <th>
                                                            <div class="date">12月20日</div>
                                                            <div class="text">星期一</div>
                                                        </th>
                                                        
                                                        <th>
                                                            <div class="date">12月21日</div>
                                                            <div class="text">星期二</div>
                                                        </th>
                                                        
                                                        <th>
                                                            <div class="date">12月22日</div>
                                                            <div class="text">星期三</div>
                                                        </th>
                                                        
                                                        <th>
                                                            <div class="date">12月23日</div>
                                                            <div class="text">星期四</div>
                                                        </th>
                                                        
                                                        <th>
                                                            <div class="date">12月24日</div>
                                                            <div class="text">星期五</div>
                                                        </th>
                                                        
                                                        <th>
                                                            <div class="date">12月25日</div>
                                                            <div class="text">星期六</div>
                                                        </th>
                                                        
                                                        <th>
                                                            <div class="date">12月26日</div>
                                                            <div class="text">星期七</div>
                                                        </th>
												
                                                    </tr>
                                                    <tr>
                                                        <!--<td class="ph">上午</td>-->
												
                                                        <td>
                                                           
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="#">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                          
                                                        </td>
                                                        
                                                        <td>
   
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                          
                                                        </td>
                                                        
                                                        <td>
                                                           
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="#">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                          
                                                        </td>
                                                        
                                                        <td>
   
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                          
                                                        </td>
                                                        
                                                        <td>
                                                           
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="#">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                          
                                                        </td>
                                                        
                                                        <td>
   
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                          
                                                        </td>
                                                      	
                                                        <td>
                                                           
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="#">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                          
                                                        </td>
                                                        
                                                        
                                               
                                                        
                                                    </tr>
                                                    <tr>
                                                        <!--<td class="ph">下午</td>-->
                                                        
                                                
                                                        <td>
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                            
                                                        </td>
                                               			
                                                        <td>
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                            
                                                        </td>
                                               			
                                                        <td>
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                            
                                                        </td>
                                               			
                                                        <td>
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                            
                                                        </td>
                                                       
                                                        
                                                        
                                                    </tr>
                                                    <tr>
                                                        <!--<td class="ph">晚上</td>-->
                                                        
                                                        <td>
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="#">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="#">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            
                                                            	<div class="inner-border opening">
																	<a hidefocus="true" class="opening" href="#">
																		<span class="normal-type">点击预约</span>
																	</a>
																</div>
                                                            
                                                        </td>
                                                        
                                                        <td>
                                                            	<div class="inner-border">
	                                                                <a hidefocus="true" href="javascript:void 0">点击预约
	                                                                </a>
	                                                            </div>
                                                            
                                                        </td>
                                                        
                                                        
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- 向右箭头替代方案
            <i class="right-arrow disabled"></i>-->
                                        <div class="arrow-bar right-arrow-bar">
                                            <i></i>
                                        </div>
                                    </div>
                                </div>

                            </article>
                        </div>
                        <div class="doctor-experience">
                            <h3 class="ys-util-text-medium">执业经历</h3>
                            <p class="ys-util-text-smaller ys-util-margin-t10">从1995到至今武汉同济医院;华中科技大学同济医学院外科学博士；美国加州大学洛杉矶分校（UCLA医学中心泌尿外科博士后</p>
                        </div>
                        <!-- 用户评价 -->


                    </div>
                </article>
                
                
                <aside class="container-aside">
                <article class="broad" style="border-bottom: none; margin-bottom: 0px;">
                    <div class="title">挂号规则</div>
                    <div class="ct">
                        <p class="depics"><span class="sq">1.&nbsp;</span><span class="text">每日8:00左右更新后一天号源</span></p>
                        <p class="depics"><span class="sq">2.&nbsp;</span><span class="text">可预约当天和未来2周号源</span></p>
                        <p class="depics"><span class="sq">3.&nbsp;</span><span class="text">请参考短信提示，到医院就诊</span></p>
                        <p class="depics"><span class="sq">4.&nbsp;</span><span class="text">就诊前一天16:00前，到“我的医者天下”&gt;“我的预约”，可取消预约</span></p>
                        <p class="depics"><span class="sq">5.&nbsp;</span><span class="text">如需帮助，可拨打客服4000-xxx-xxx(10:00-18:00)</span></p>
                    </div>
                </article>
                <article class="broad" style="margin-bottom: 0px;">
                    <div class="title">帮助中心<a class="more a-hover" target="_blank" href="#">更多&gt;</a></div>
                    <div class="ct">
                        <p class="depics"><span class="sq">1.&nbsp;</span><a target="_blank" href="#">医者天下是什么？</a></p>
                        <p class="depics"><span class="sq">2.&nbsp;</span><a target="_blank" href="#">如何选择医生？</a></p>
                        <p class="depics"><span class="sq">3.&nbsp;</span><a target="_blank" href="#">如何预约医生？</a></p>
                        <p class="depics"><span class="sq">4.&nbsp;</span><a target="_blank" href="#">如何评价医生？</a></p>
                    </div>
                </article>
              
            </aside>
        </div>
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
    <script type="text/javascript">

    </script>
</body>
</html>