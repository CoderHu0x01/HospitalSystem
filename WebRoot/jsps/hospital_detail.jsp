<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医者天下hospital_detail.jsp</title>
	<%
		pageContext.setAttribute("PATH", request.getContextPath());
	%>
    <base target="_self">
    <link rel="stylesheet" href="${PATH }/static/css/hospital_detail.css" />
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

                <div class="keyword">
                    <form method="get" id="med_form" onKeyDown="if(event.keyCode==13)return false;" action="#">
                        <input type="text" name="key" autocomplete="off" placeholder="请输入医院/科室/疾病/症状/医生姓名" id="search-tips-input" value="">
                        <button type="button" class="btn-doctor" id="querySearch">搜&nbsp;索</button>
                    </form>
                    <div class="search-suggest-layer" style="display: none; border: 1px #eaeaea solid; margin-top: -2px; width: 466px; background-color: #fff; border-bottom-left-radius: 4px; border-bottom-right-radius: 4px; position: absolute; z-index: 1;"></div>
                </div>
            </div>
        </header>
    </header>

    <div class="wrap">



        <div class="container" data-accuracy="0">
            <article class="hospi-top">
                <div class="hospi-pic">
                    <img src="${PATH }/static/images/d31b0ef41bd5ad6ee0d4c29787cb39dbb6fd3c99.jpg" alt="武汉同济医院">
                </div>
                <div class="hospi-info">
                    <div class="clearfix">
                        <h3 class="hospi-title fl"><span id="hospital_name">武汉协和医院</span><span class="grade">三甲</span><span class="corpt">医保</span></h3>
                        <p class="grade-star fr"><i class="star star-light star-fixed"></i><i class="star star-light star-fixed"></i><i class="star star-light star-fixed"></i><i class="star star-light star-fixed"></i><i class="star star-light star-fixed"></i><em class="">9.8</em><span class="prompt-down">医院综合评分：由网络用户投票得出<i></i></span></p>
                    </div>
                    <div class="hospi-content">
                        <p class="text"><span class="label">医院电话：</span><label id="hospital_phone">027-88041911</label></p>
                        <p class="text"><span class="label">医院地址：</span><label id="hospital_address">武汉市武昌区</label></p>
                        <div class="hos-short text"><span class="label">医院概况：</span><p class="detail key">暂无</p>
                        </div>
                        <p class="text s-info"><span class="label">提供服务：</span><span class="key">预约挂号</span>&nbsp;/&nbsp;<span class="key">出诊提醒</span></p>
                        <p class="ilt"><span class="num">726</span>位优质医生<b class="splitter"></b><span class="num">52118</span>人成功预</p>
                    </div>
                </div>
            </article>
            <aside id="Tab" class="h-tabs">
                <div class="nav clearfix">
                    <a href="javascript:void 0" data-value="0" class="hd fl current">全部医生</a>
                    <a href="javascript:void 0" data-value="1" data-flag="0" id="tab-desc" class="hd  fl">医院简介</a>
                    <a href="javascript:void 0" data-value="2" class="hd  fl">挂号规则</a>
                    <a href="javascript:void 0" data-value="3" class="hd  fl">用户评价&nbsp;<span class="evaluation-num" id="user-evaluation">(1206)</span></a>
                </div>
                <div class="main">

                    <!--  全部医生 -->
                    <div class="content  current otiotns" style="display: block;">
                        <div class="select-condition hospital-detail">
                            <div class="select-detail" data-type="1">
                                <h4>一级科室:</h4>
                                <ul class="dropmenus" id="depart-level1-ul" style="margin-bottom: 10px;">
                                	<li data-department-flag="1" data-value="0" id="depart0" class="select-cur" data-child="1"><a href="#">全部</a></li>
                                	
                                    	<li data-department-flag="1" id="内科"><a href="#">内科</a></li>
                                        <li data-department-flag="1" id="儿科"><a href="#">儿科</a></li>
                                        <li data-department-flag="1" id="眼科"><a href="#">眼科</a></li>
                                    
                                </ul>
                            </div>
                            <div class="select-detail mains-doctor" data-type="3" style="border-top-width: 1px; border-top-style: dashed; border-top-color: rgb(234, 234, 234);">
                                <h4>医生职称:</h4>
                                <ul class="dropmenus" id="medtitle-ul">
                                    <li data-value="0" class="select-cur" id="title0"><a href=#">全部</a></li>
                                    <li data-value="1" id="title1"><a href="#">主任医师</a></li>
                                    <li data-value="2" id="title2"><a href="#">副主任医师</a></li>
                                    <li data-value="3" id="title3"><a href="#">主治医师</a></li>
                                    <li data-value="4" id="title4"><a href="#">普通医师</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="doctor-info-box">
                            <h4>符合条件的
                                <label class="curdotor"><em id="doc_total">10</em></label>
                                名优质医生</h4>
                            <ul id="doctor-info-list" class="doctor-info-list" style="display: block;">
                                
                               
                                <li class="doctor-info-single" style="border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-style: solid solid none; border-top-color: rgb(234, 234, 234); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255);">
                                    <div class="doctor-card clearfix">
                                        <div class="info-pic"><a href="#" target="_blank">
                                            <img src="${PATH }/static/images/yisheng2.png"></a></div>
                                        <div class="infos">
                                            <div class="info-title" style="margin-top: -10px"><a href="#" target="_blank">
                                                <div>曹云</div>
                                            </a><span class="doctor-medtitle">主任医师</span>/<span class="doctor-title">教授，博士生导师</span><p class="info-hospittal"><span><a href="#" target="_blank">武汉同济医院</a></span><a href="#" target="_blank">口腔粘膜科</a></p>
                                                <table cellspacing="0" cellpadding="0">
                                                    <tbody>
                                                        <tr class="doctor-good">
                                                            <td class="first-td" valign="top">擅长诊治: </td>
                                                            <td class="last-td" valign="top">...</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div class="rate"><span>总推荐度：</span><div class="grade-star"><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-gray-light star-fixed"></i></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="server-but fr">
                                            <p><a href="#" target="_self">预约挂号</a></p>
                                        </div>
                                    </div>
                                </li>
								
                                <li class="doctor-info-single" style="border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-style: solid solid none; border-top-color: rgb(234, 234, 234); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255);">
                                    <div class="doctor-card clearfix">
                                        <div class="info-pic"><a href="#" target="_blank">
                                            <img src="${PATH }/static/images/yisheng2.png"></a></div>
                                        <div class="infos">
                                            <div class="info-title" style="margin-top: -10px"><a href="#" target="_blank">
                                                <div>曹云</div>
                                            </a><span class="doctor-medtitle">主任医师</span>/<span class="doctor-title">教授，博士生导师</span><p class="info-hospittal"><span><a href="#" target="_blank">武汉同济医院</a></span><a href="#" target="_blank">口腔粘膜科</a></p>
                                                <table cellspacing="0" cellpadding="0">
                                                    <tbody>
                                                        <tr class="doctor-good">
                                                            <td class="first-td" valign="top">擅长诊治: </td>
                                                            <td class="last-td" valign="top">...</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div class="rate"><span>总推荐度：</span><div class="grade-star"><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-light star-fixed"></i><i class="star-right star-gray-light star-fixed"></i></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="server-but fr">
                                            <p><a href="#" target="_self">预约挂号</a></p>
                                        </div>
                                    </div>
                                </li>
                                 
                            </ul>
					
						<div class="result-empty doctor-empty" style="display: block;">
                            <img src="${PATH }/static/images/no-doctor.png" class="resultimg">
                            <div class="result-text">抱歉！没有符合条件的医生</div>
                        </div>
					
                        
                    </div>
                    <!--  END全部医生 -->

                </div>
            </aside>
        </div>


        <input type="hidden" id="search-tag" value=""><aside class="right-sidebar">
            <article class="broad" style="border-bottom: none; margin-bottom: 0px;">
                <h1 class="title">挂号规则</h1>
                <div class="ct">
                    <p class="depics"><b class="sq">1.</b>每日8:00左右更新后一天号源</p>
                    <p class="depics"><b class="sq">2.</b>可预约当天和未来2周号源</p>
                    <p class="depics"><b class="sq">3.</b>请参考短信提示，到医院就诊</p>
                    <p class="depics"><b class="sq">4.</b>就诊前一天16:00前，到“我的医者天下”&gt;“我的预约”，可取消预约</p>
                    <p class="depics"><b class="sq">5.</b>如需帮助，可拨打客服4000-191-191(10:00-18:00)</p>
                </div>
            </article>
            <article class="broad" style="margin-bottom: 0px;">
                <h1 class="title">帮助中心</h1>
                <div class="ct">
                    <p class="depics"><b class="sq">1.</b><a target="_blank" href="#">医者天下是什么？</a></p>
                    <p class="depics"><b class="sq">2.</b><a target="_blank" href="#">如何选择医生？</a></p>
                    <p class="depics"><b class="sq">3.</b><a target="_blank" href="#">如何预约医生？</a></p>
                    <p class="depics"><b class="sq">4.</b><a target="_blank" href="#">如何评价医生？</a></p>
                    <a class="more" target="_blank" href="#">查看更多&gt;</a>
                </div>
            </article>


        </aside>
        <div class="result-empty hospital-empty" style="display: none;">
            <img src="${PATH }/static/images/no-hospital.png" class="resultimg"><div class="result-text">抱歉！没有符合条件的医院</div>
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
</body>>
</html>