<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医者天下doctor_list.jsp</title>
	<%
		pageContext.setAttribute("PATH", request.getContextPath());
	%>

    <base target="_self">
    <link rel="stylesheet" href="${PATH }/static/css/doctor.css" />
</head>
<body>
    <header class="header">
        <header id="fastTop" class="header" style="height: 100px;">
            <div class="search_box">
                <span class="logo">
                    <a href="${PATH }/indexHospital">
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
            <div class="select-condition">
                <div class="select-detail" data-type="1">
                     <h4>一级科室:</h4>
                    
                     <ul class="dropmenus" id="depart-level1-ul" style="margin-bottom: 10px;">
	                     	<li data-department-flag="1" data-value="0" id="depart0" class="select-cur" data-child="1"><a href="#">全部</a></li>
	                    <c:forEach items="${mapMedInfo.listDeptOne }" var="deptOne">
	                        <li data-department-flag="1" id="${deptOne.d_name }"><a href="#">${deptOne.d_name }</a></li>
                        </c:forEach>
                     </ul>
                </div>
                
                <div class="select-detail mains-doctor" data-type="3" style="border-top-width: 1px; border-top-style: dashed; border-top-color: rgb(234, 234, 234);">
                    <h4>医生职称:</h4>
                    <ul class="dropmenus" id="medtitle-ul">
                        <li data-value="0" id="title0" class="select-cur"><a href="#">全部</a></li>
                        <c:forEach items="${mapMedInfo.listTitle }" var="med">
                        	<li data-value="1" id="title1"><a href="#">${med.title }</a></li>
                        </c:forEach>
                       <!--  <li data-value="2" id="title2"><a href="#">副主任医师</a></li>
                        <li data-value="3" id="title3"><a href="#">主治医师</a></li>
                        <li data-value="4" id="title4"><a href="">普通医师</a></li> -->
                   	</ul>
                </div>
                
            </div>
            <div class="doctor-info-box">
                            <h4>符合条件的
                                <label class="curdotor"><em id="doc_total">${mapMedInfo.count }</em></label>
                                名优质医生</h4>
                            <ul id="doctor-info-list" class="doctor-info-list" style="display: block;">
                                
                                 <c:forEach items="${mapMedInfo.listMed }" var="med">
                                <li class="doctor-info-single" style="border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-style: solid solid none; border-top-color: rgb(234, 234, 234); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255);">
                                    <div class="doctor-card clearfix">
                                        <div class="info-pic"><a href="#" target="_blank">
                                            <img src="${PATH }/static/images/yisheng2.png"></a></div>
                                        <div class="infos">
                                            <div class="info-title" style="margin-top: -10px"><a href="#" target="_blank">
                                                <div>${med.m_name }</div>
                                            </a><span class="doctor-medtitle">${med.title }</span>/<span class="doctor-title">${med.m_spec }</span><p class="info-hospittal"><span><a href="#" target="_blank">${med.hospital }</a></span><a href="#" target="_blank">${med.dept }</a></p>
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
							</c:forEach>
                                 
                            </ul>
					
						<div class="result-empty doctor-empty" style="display: block;">
                            <img src="${PATH }/static/images/no-doctor.png" class="resultimg">
                            <div class="result-text">抱歉！没有符合条件的医生</div>
                        </div>
					
                        
                    </div>
        </div>


        <input type="hidden" id="search-tag" value=""><aside class="right-sidebar">
            <article class="broad" style="border-bottom: none; margin-bottom: 0px;">
                <h1 class="title">挂号规则</h1>
                <div class="ct">
                    <p class="depics"><b class="sq">1.</b>每日8:00左右更新后一天号源</p>
                    <p class="depics"><b class="sq">2.</b>可预约当天和未来2周号源</p>
                    <p class="depics"><b class="sq">3.</b>请参考短信提示，到医院就诊</p>
                    <p class="depics"><b class="sq">4.</b>就诊前一天16:00前，到“我的医者天下”&gt;“我的预约”，可取消预约</p>
                    <p class="depics"><b class="sq">5.</b>如需帮助，可拨打客服4000-xxx-xxx(10:00-18:00)</p>
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
		$("#depart-level1-ul li").click(function(){
			var liVal=$(this).children("a").text();
			if(liVal=="全部"){
				location.href="${PATH}/findMedicinerInfo";
			}else{
				location.href="${PATH}/findMedByWhere?med_dept.d_name="+liVal;
			}
		});
		
		
		$("#medtitle-ul li").click(function(){
			var liVal=$(this).children("a").text();
			if(liVal=="全部"){
				location.href="${PATH}/findMedicinerInfo";
			}else{
				location.href="${PATH}/findMedByWhere?title="+liVal;
			}
		});
		
		
		$("#querySearch").click(function(){
			var seachVal=$("#search-tips-input").val();
			
			location.href="${PATH}/findSeachMed?param="+seachVal;
		});
    </script>
</body>
</html>