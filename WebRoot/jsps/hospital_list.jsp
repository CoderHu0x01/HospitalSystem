<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医者天下hospital_list.jsp</title>
	<%
		pageContext.setAttribute("PATH", request.getContextPath());
	%>
    <!--[if IE]>
	<script src="js/html5.js"></script>
	<![endif]-->

    <base target="_self">
    <link rel="stylesheet" href="${PATH }/static/css/hospital.css" />
    
    <script type="text/javascript" src="${PATH }/static/js/jquery-1.11.2.min.js"></script>
    
    <script type="text/javascript">
    	

    	
    </script>
</head>
<body>
    <header class="header">
        <header id="fastTop" class="header" style="height: 100px;">
            <div class="search_box">
            <span class="logo">
                <a href="${PATH }/indexHospital">
                    <img src="${PATH }/static/images/logo.jpg"></a>
            </span>
            
            <div class="keyword">
                <form method="post" id="med_form" action="" onKeyDown="if(event.keyCode==13)return false;">
                    <input type="text" name="name" autocomplete="off" placeholder="请输入医院名称" id="search-tips-input" value="">
                    <button type="button" class="btn-doctor" id="querySearch">搜&nbsp;索</button>
                </form>
                <div class="search-suggest-layer" style="display: none; border: 1px #eaeaea solid; margin-top: -2px; width: 466px; background-color: #fff; border-bottom-left-radius: 4px; border-bottom-right-radius: 4px; position: absolute; z-index: 1;"></div>
            </div>
        </div>
        </header>
    </header>

    <div class="wrap">
        <div class="container">
            <div class="hospital-list" data-isrecommend="0">
                <div class="content-left">
                    <div class="depart-select" style="padding-top: 0;">
                        <div class="select-detail hospital-level" data-type="3">
                            <h4>医院级别:</h4>
                            <ul class="dropmenus">
                                <!-- <li id="grade0" data-value="0" class="select-cur"><a href="#">全部</a></li>
                                <li id="grade1" data-value="12"><a href="#">三甲医院</a></li>
                                <li id="grade2" data-value="12"><a href="#">三乙医院</a></li>
                                <li id="grade3" data-value="9,10,11,12"><a href="#">二甲医院</a></li>
                                <li id="grade4" data-value="5,6,7,8"><a href="#">二级医院</a></li> -->
                            </ul>
                        </div>
                       
                      
                    </div>
                    <div class="sort-container">
                        <p class="fl">为您找到<em id="hos_region">武汉</em>共<label class="curdotor"><i id="hos_total"></i></label>家医院</p>
                        <div class="hospital-sort fr"><span data-value="1" class="sort-cur">综合排序</span><span data-value="4">按累计提供服务次数</span><span class="medical-care" data-value="医保定点"><input type="checkbox" value="1"><label>医保定点</label></span></div>
                    </div>
                </div>

                <!-- 医院列表 -->
                <ul id="hospital-list-ul">
                	
               <%--    <li class="hospital-info-li">
                        <div class="hospital-info">
                            <div class="hospital-pic">
                                <a target="_blank" href="#"> <img class="fl" src="${PATH }/static/images/09fa513d269759eeaac0c0eeb5fb43166d22df07.jpg"></a>
                            </div>
                            
                            <div class="hospital-introduces fl">
                              <div class="introduces-title">
                                	<a href="#">武汉协和医院</a>
                                	<span class="hospital-sign">三甲</span>
                                	<span class="hospital-health">医保</span>
                             </div>
	                           <p class="grade-star">
	                                <i class="star-right star-light star-fixed"></i>
	                                <i class="star-right star-light star-fixed"></i>
	                                <i class="star-right star-light star-fixed"></i>
	                                <i class="star-right star-light star-fixed"></i>
	                                <i class="star-right star-light star-fixed"></i>
	                                
	                                <span class="grade-text ">9.8</span>
	                                <span class="comment-text"></span>
                                </p>
                                <label>有优质医生<span>100</span>人<span>
                                <table cellspacing="0" cellpadding="0">
                                  <tbody>
                                        <tr>
                                            <td valign="top" class="first-child">医院地址: </td>
                                            <td class="info-pos last-child">
                                                <p class="address">武汉市武昌区</p>
                                                <a href="#" class="marker" target="_blank"><i class="fa fa-map-marker"></i>查看地图</a>
                                                
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="server-but fr">
                                <p><a href="#" target="_blank">预约挂号</a></p>
                            </div>
                        </div>
                    </li>  --%>

                   
                </ul>
                
                <!-- END医院列表 -->
                <div class="pagination-x pull-right"><span class="pagers">
                    <ul class="pagination-x-list">
                        <ul>
                        		<li><a class="prev-off">
                                <label>上一页</label></a></li>
                        	
                        		<li><a class="prev-on" href="#">
                                <label>上一页</label></a></li>
                        	
                        		<li><a class="next-off">
                                <label>下一页</label></a></li>
                        	
                                <label>下一页</label></a></li>
                        </ul>
                    </ul>
                </span></div>
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

    <script src="${PATH }/static/js/jquery.SuperSlide.2.1.1.js"></script>

    <script type="text/javascript">
        jQuery(".slideBox").slide({ mainCell: ".bd ul", autoPlay: true });

        jQuery(".slideBox2").slide({ mainCell: ".bd ul", vis: 4, scroll: 4, effect: "left", autoPlay: false, pnLoop: false });


    </script>
    
    <script type="text/javascript">
    	$(function(){
    		loadHosGrade();	
    	});
    	
    	function loadHosGrade(){
    		$.get("${PATH}/hospitalList",function(result){
    			loadDocument(result);
    		});
    	}
    	
    	//搜索
    	$("#querySearch").click(function(){
    		var searchVal=$("#search-tips-input").val();
    		$.ajax({
    			url:"${PATH}/findHosByHname",
    			type:"GET",
    			data:"h_name="+searchVal,
    			success:function(result){
    				loadHosInfo(result);
    			}
    		});
    	});
    	
    	function loadDocument(result){
    		
    		var ulDropmenus=$(".dropmenus");
    		/*
    		重置数据
    		*/
    		ulDropmenus.empty();
    		$(".sort-container #hos_total").text("");
    		
    		//var listHos=result.map.listHos;
    		$(".sort-container #hos_total").append(result.map.countHos);
    		
    		var allLi=$("<li id='grade0' data-value='0' class='select-cur'>").append($("<a>")).attr("href","#").append("全部");
    		allLi.click(function(){
    			loadHosGrade();
    		});
    		
    		ulDropmenus.append(allLi);
    		$.each(result.map.listGrade,function(index,item){
    			var gradeLi=$("<li id='grade1' data-value='12'>").append($("<a>").attr("href","#").append(item.grade)).attr("class","liGrade");
    			ulDropmenus.append(gradeLi);
    		});
    		
    		loadHosInfo(result);
    	}

    	
		function loadHosInfo(result){
			
				var hospitalListUl=$("#hospital-list-ul");	
				/*
	    		重置数据
	    		*/
	    		hospitalListUl.empty();
	    		
				
				$.each(result.map.listHos,function(index,item){
	    			
	    			var hospitalInfoLi=$("<li class='hospital-info-li'>");
	    			var hospitalInfo=$("<div class='hospital-info'>");
	    			
	    			 var hospitalPic=$("<div class='hospital-pic'>").append($("<a target='_blank'>")).attr("href","#")
	    						.append($("<img class='fl' src='${PATH }/static/images/09fa513d269759eeaac0c0eeb5fb43166d22df07.jpg'>"));;
	    		   	hospitalInfo.append(hospitalPic);
	    				
	    		   	
	    		    var hospitalIntroducesFl=$("<div class='hospital-introduces fl'>")
	    		    .append($("<div class='introduces-title'>").append($("<a>").attr("href","#").append(item.h_name))
	    		    .append($("<span class='hospital-sign'>").append(item.grade))
	    		    .append($("<span class='hospital-health'>").append("医保"))
	    		    );
	    		  
	    		   
	    			var pContext=$("<p class='grade-star'>")
	    			.append($("<i class='star-right star-light star-fixed'>"))
	    			.append($("<i class='star-right star-light star-fixed'>"))
	    			.append($("<i class='star-right star-light star-fixed'>"))
	    			.append($("<i class='star-right star-light star-fixed'>"))
	    			.append($("<i class='star-right star-light star-fixed'>"))
	    			.append($("<span class='grade-text'>").append("9.8"))
	    			.append($("<span class='comment-text'>"));
	    			hospitalIntroducesFl.append(pContext);
	    			
	    			 var lableContext=$("<label>").append("有优质医生").append($("<span>").append(item.count+"人"));
	    			hospitalIntroducesFl.append(lableContext);
	
	    			var tableContext=$("<table cellspacing='0' cellpadding='0'>")
	    			.append($("<tbody>"))
	    			.append($("<td valign='top' class='first-child'>").append("医院地址:"))
	    			.append($("<td class='info-pos last-child'>").append($(" <p class='address'>").append(item.address))
	    			.append($("<a class='marker' target='_blank'>").attr("href","#").append($("<i class='fa fa-map-marker'>").append("查看地图"))));
	    			hospitalIntroducesFl.append(tableContext);
	    			 
	    			hospitalInfo.append(hospitalIntroducesFl);
	    			
	    			var serverButFr=$(" <div class='server-but fr'>").append($("<p>").append($("<a target='_blank>").attr("href","#").append("预约挂号")))
	    			hospitalInfoLi.append(serverButFr);
	    			
	    			hospitalInfoLi.append(hospitalInfo);
	    			
	    			hospitalListUl.append(hospitalInfoLi);
	    			
			});
		}
		

    	
    	$(document).on("click",".liGrade",function(){
			 $.ajax({
				url:"${PATH}/findHosByGrade",
				type:"GET",
				data:"grade="+$(this).children("a").text(),
				success:function(result){
					loadHosInfo(result);
				}
			}); 
		});
    </script>
</body>
</html>