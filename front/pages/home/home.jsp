<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: translate3d(10px,0px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						border-radius: 100%;
						left: 10px;
						background: none;
						width: 40px;
						right: auto;
						height: 40px;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: #249940;
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: #249940;
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"width":"100%","margin":"0px auto","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"0 0 0px","margin":"0px auto","borderColor":"#98dd90","flexWrap":"wrap","background":"url() no-repeat center top,#faf0e6","borderWidth":"0 0 0px","display":"flex","width":"100%","position":"relative","borderStyle":"dotted","order":"2"}'>
					<div v-if="true && 2 == 1" class="recommend-idea" :style='{"width":"100%","padding":"0px 7%","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/bb7105350fc24c34a1b2d5d05e889ef6.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"32px","padding":"0px 7%","margin":"40px auto 20px","borderRadius":"0px","alignItems":"flex-start","background":"none","flexDirection":"column","display":"flex","width":"100%","position":"relative","justifyContent":"flex-start"}'>
						<span :style='{"fontSize":"20px","lineHeight":"40px","color":"#202020","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"margin":"0 4px 0 0","fontSize":"30px","lineHeight":"30px","color":"#202020","fontWeight":"bold"}'>商品信息推荐</span>
					</div>
					
					<div v-if="true && 2 == 2" class="recommend-idea" :style='{"width":"100%","padding":"0px 7%","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/bb7105350fc24c34a1b2d5d05e889ef6.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<div :style='{"padding":"20px 7% 40px","flexWrap":"wrap","background":"none","display":"block","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-4">
					    <div :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","float":"left","height":"570px"}' v-if="shangpinxinxiRecommend.length>0" class="list-4-item animation-box item-1" @click="jump('../shangpinxinxi/detail.jsp?id='+shangpinxinxiRecommend[0].id)">
							<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="shangpinxinxiRecommend[0].shangpintupian?baseurl+shangpinxinxiRecommend[0].shangpintupian.split(',')[0]:''" alt="" />
							<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                                <div>{{shangpinxinxiRecommend[0].shangpinmingcheng}}</div>
                                <div>{{shangpinxinxiRecommend[0].shangpinfenlei}}</div>
                            </div>
					    </div>
					    <div class="list-body" :style='{"width":"48%","margin":"0 0 20px","float":"right","justifyContent":"space-between","display":"flex","height":"275px"}' v-if="shangpinxinxiRecommend.length>1">
							<div v-if="shangpinxinxiRecommend.length>1" @click="jump('../shangpinxinxi/detail.jsp?id='+shangpinxinxiRecommend[1].id)" class="list-4-item animation-box item-2" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="shangpinxinxiRecommend[1].shangpintupian?baseurl+shangpinxinxiRecommend[1].shangpintupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                                    <div>{{shangpinxinxiRecommend[1].shangpinmingcheng}}</div>
                                    <div>{{shangpinxinxiRecommend[1].shangpinfenlei}}</div>
                                </div>
							</div>
							<div v-if="shangpinxinxiRecommend.length>2" @click="jump('../shangpinxinxi/detail.jsp?id='+shangpinxinxiRecommend[2].id)" class="list-4-item animation-box item-3" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="shangpinxinxiRecommend[2].shangpintupian?baseurl+shangpinxinxiRecommend[2].shangpintupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                                    <div>{{shangpinxinxiRecommend[2].shangpinmingcheng}}</div>
                                    <div>{{shangpinxinxiRecommend[2].shangpinfenlei}}</div>
                                </div>
							</div>
					    </div>
					    <div v-if="shangpinxinxiRecommend.length>3" class="list-body" :style='{"width":"48%","margin":"10px 0 0","float":"right","justifyContent":"space-between","display":"flex","height":"275px"}'>
							<div v-if="shangpinxinxiRecommend.length>3" @click="jump('../shangpinxinxi/detail.jsp?id='+shangpinxinxiRecommend[3].id)" class="list-4-item animation-box item-4" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="shangpinxinxiRecommend[3].shangpintupian?baseurl+shangpinxinxiRecommend[3].shangpintupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                                    <div>{{shangpinxinxiRecommend[3].shangpinmingcheng}}</div>
                                    <div>{{shangpinxinxiRecommend[3].shangpinfenlei}}</div>
                                </div>
							</div>
							<div v-if="shangpinxinxiRecommend.length>4" @click="jump('../shangpinxinxi/detail.jsp?id='+shangpinxinxiRecommend[4].id)" class="list-4-item animation-box item-5" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="shangpinxinxiRecommend[4].shangpintupian?baseurl+shangpinxinxiRecommend[4].shangpintupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                                    <div>{{shangpinxinxiRecommend[4].shangpinmingcheng}}</div>
                                    <div>{{shangpinxinxiRecommend[4].shangpinfenlei}}</div>
                                </div>
							</div>
					    </div>
					</div>
					
					<div :style='{"cursor":"pointer","padding":"0 6px","margin":"20px auto 0px","borderColor":"#999","textAlign":"center","display":"inline-block","right":"7%","top":"30px","background":"none","borderWidth":"1px","width":"auto","lineHeight":"30px","position":"absolute","borderStyle":"solid"}' @click="jump('../shangpinxinxi/list.jsp')">
						<span :style='{"color":"#202020","fontSize":"16px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#202020","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="true && 2 == 3" class="recommend-idea" :style='{"width":"100%","padding":"0px 7%","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/bb7105350fc24c34a1b2d5d05e889ef6.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"minHeight":"520px","padding":"100px 0 20px","margin":"0px auto 0px","borderColor":"#98dd90","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230109/5ffc803e6682418eb7f0b09a98e35527.png) no-repeat center top,#fff","borderWidth":"0 0 0px","display":"flex","width":"100%","position":"relative","borderStyle":"dotted","order":"8"}'>
					<div v-if="true && 2 == 1" class="news-idea" :style='{"padding":"0px 7%","margin":"10px 0 0","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/533c6403944f4524a04473dbecdf6668.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 7%","margin":"0px auto 0px","borderRadius":"0px","alignItems":"flex-start","top":"0px","background":"none","flexDirection":"column","display":"flex","width":"100%","position":"relative","justifyContent":"flex-start","zIndex":"99"}'>
						<span :style='{"fontSize":"20px","lineHeight":"40px","color":"#202020","display":"inline-block","order":"2","textTransform":"uppercase"}'>HOME NEWS</span>
						<span :style='{"margin":"0 4px 0 0","fontSize":"30px","lineHeight":"30px","color":"#202020","fontWeight":"bold"}'>公告信息</span>
					</div>
					
					<div v-if="true && 2 == 2" class="news-idea" :style='{"padding":"0px 7%","margin":"10px 0 0","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/533c6403944f4524a04473dbecdf6668.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"padding":"40px 7% 40px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' v-if="newsList.length" class="list list-10">
						<div v-if="newsList.length>0" @click="jump('../news/detail.jsp?id='+newsList[0].id)" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","background":"none","height":"auto"}' class="new10-list-item animation-box">
							<img :style='{"border":"6px solid #cca162","width":"100%","objectFit":"cover","display":"block","height":"220px"}' :src="newsList[0].picture?baseurl+newsList[0].picture:''" alt="">
							<div :style='{"padding":"16px 0px 8px","whiteSpace":"nowrap","overflow":"hidden","color":"#b58339","background":"none","width":"calc(100% - 80px)","fontSize":"20px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{newsList[0].title}}</div>
							<div :style='{"padding":"0 10px","overflow":"hidden","color":"#555","background":"none","fontSize":"16px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{newsList[0].introduction}}</div>
							<div :style='{"padding":"4px 8px","fontSize":"14px","lineHeight":"24px","color":"#fff","background":"#cca162","display":"inline-block"}' class="new9-list-item-time">{{newsList[0].addtime.split(' ')[0]}}</div>
							<div :style='{"padding":"0 10px","margin":"0 10px 10px","color":"#999","background":"#fff","display":"none","fontSize":"12px","lineHeight":"24px"}' class="new9-list-item-identification">新闻动态</div>
						</div>
						<div v-if="newsList.length>1" :style='{"padding":"0 0 0 120px","margin":"0 0px","background":"url(http://codegen.caihongy.cn/20230109/558d6ae97f424b9486bb076db9173c9b.png) no-repeat left top","flexDirection":"column","display":"block","width":"48%","position":"relative","justifyContent":"space-between","height":"400px"}'>
							<div v-for="(item,index) in newsList" v-if="index<4 && index>0" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"cursor":"pointer","width":"100%","margin":"0 0 55px","position":"relative","background":"none","height":"100px"}' class="new10-list-item animation-box">
								<div :style='{"padding":"0px","whiteSpace":"nowrap","overflow":"hidden","color":"#b58339","background":"none","width":"calc(100% - 80px)","fontSize":"20px","lineHeight":"1","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{ item.title }}</div>
								<div :style='{"padding":"0 0px","margin":"5px auto 0","overflow":"hidden","color":"#555","background":"none","display":"block","width":"calc(100% - 0px)","fontSize":"16px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{ item.introduction }}</div>
								<div :style='{"fontSize":"14px","lineHeight":"1","position":"absolute","right":"20px","color":"#b89e66","top":"2px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
								<div :style='{"padding":"0 10px","fontSize":"12px","lineHeight":"24px","color":"#999","background":"#fff","display":"none"}' class="new9-list-item-identification">新闻动态</div>
							</div>
						</div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 6px","margin":"0px auto 0px","borderColor":"#999","textAlign":"center","display":"inline-block","right":"7%","top":"110px","background":"none","borderWidth":"1px","width":"auto","lineHeight":"30px","position":"absolute","borderStyle":"solid","zIndex":"999"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#333","fontSize":"16px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="true && 2 == 3" class="recommend-idea" :style='{"padding":"0px 7%","margin":"10px 0 0","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/533c6403944f4524a04473dbecdf6668.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
			

				<div class="lists" :style='{"padding":"0px 0 0px","margin":"0px auto","borderColor":"#98c6e2","flexWrap":"wrap","textAlign":"center","background":"#faf0e6","borderWidth":"0 0 0px","display":"block","width":"100%","position":"relative","borderStyle":"dotted","order":"4"}'>
					<div v-if="true && 2 == 1" class="recommend-idea" :style='{"padding":"0px 7%","margin":"10px 0 0","flexWrap":"wrap","background":"#faf0e6","display":"flex","width":"100%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/80e36442864b4158aae8264689c04a4d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 7%","margin":"0px auto 0px","alignItems":"flex-start","flexDirection":"column","display":"flex","justifyContent":"flex-start","minHeight":"32px","borderRadius":"0px","top":"0px","left":"0px","background":"none","width":"100%","position":"relative"}'>
					  <span :style='{"fontSize":"20px","lineHeight":"40px","color":"#202020","order":"2","textTransform":"uppercase"}'>DATA SHOW</span>
					  <span :style='{"margin":"0 4px 0 0","fontSize":"30px","lineHeight":"30px","color":"#202020","background":"none","fontWeight":"bold"}'>农产品监督展示</span>
					</div>
					
					<div v-if="true && 2 == 2" class="recommend-idea" :style='{"padding":"0px 7%","margin":"10px 0 0","flexWrap":"wrap","background":"#faf0e6","display":"flex","width":"100%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/80e36442864b4158aae8264689c04a4d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div :style='{"padding":"20px 7% 40px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-7">
					    <div v-if="nongchanpinjianduList.length>0" class="list-4-item animation-box item-1" @click="jump('../nongchanpinjiandu/detail.jsp?id='+nongchanpinjianduList[0].id)" :style='{"cursor":"pointer","width":"24%","margin":"0 0px","position":"relative","height":"570px"}'>
							<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="nongchanpinjianduList[0].tupian?baseurl+nongchanpinjianduList[0].tupian.split(',')[0]:''" alt="" />
							<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                <div>{{nongchanpinjianduList[0].shangpinmingcheng}}</div>
                                <div>{{nongchanpinjianduList[0].shangpinfenlei}}</div>
                            </div>
					    </div>
					    <div :style='{"width":"24%","margin":"0 0px","height":"275px"}' class="list-4-body">
							<div v-if="nongchanpinjianduList.length>1" @click="jump('../nongchanpinjiandu/detail.jsp?id='+nongchanpinjianduList[1].id)" class="list-4-item animation-box item-2" :style='{"cursor":"pointer","width":"100%","margin":"0 0 20px","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="nongchanpinjianduList[1].tupian?baseurl+nongchanpinjianduList[1].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{nongchanpinjianduList[1].shangpinmingcheng}}</div>
                                    <div>{{nongchanpinjianduList[1].shangpinfenlei}}</div>
                                </div>
							</div>
							<div v-if="nongchanpinjianduList.length>2" @click="jump('../nongchanpinjiandu/detail.jsp?id='+nongchanpinjianduList[2].id)" class="list-4-item animation-box item-3" :style='{"cursor":"pointer","width":"100%","margin":"20px 0 0","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="nongchanpinjianduList[2].tupian?baseurl+nongchanpinjianduList[2].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{nongchanpinjianduList[2].shangpinmingcheng}}</div>
                                    <div>{{nongchanpinjianduList[2].shangpinfenlei}}</div>
                                </div>
							</div>
					    </div>
						<div v-if="nongchanpinjianduList.length>3" class="list-4-item animation-box item-1" @click="jump('../nongchanpinjiandu/detail.jsp?id='+nongchanpinjianduList[3].id)" :style='{"cursor":"pointer","width":"24%","margin":"0 0px","position":"relative","height":"570px"}'>
							<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="nongchanpinjianduList[3].tupian?baseurl+nongchanpinjianduList[3].tupian.split(',')[0]:''" alt="" />
							<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                <div>{{nongchanpinjianduList[3].shangpinmingcheng}}</div>
                                <div>{{nongchanpinjianduList[3].shangpinfenlei}}</div>
                            </div>
						</div>
					    <div :style='{"width":"24%","margin":"0 0px","height":"275px"}' class="list-4-body">
							<div v-if="nongchanpinjianduList.length>4" @click="jump('../nongchanpinjiandu/detail.jsp?id='+nongchanpinjianduList[4].id)" class="list-4-item animation-box item-4" :style='{"cursor":"pointer","width":"100%","margin":"0 0 20px","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="nongchanpinjianduList[4].tupian?baseurl+nongchanpinjianduList[4].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{nongchanpinjianduList[4].shangpinmingcheng}}</div>
                                    <div>{{nongchanpinjianduList[4].shangpinfenlei}}</div>
                                </div>
							</div>
							<div v-if="nongchanpinjianduList.length>5" @click="jump('../nongchanpinjiandu/detail.jsp?id='+nongchanpinjianduList[5].id)" class="list-4-item animation-box item-5" :style='{"cursor":"pointer","width":"100%","margin":"20px 0 0","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="nongchanpinjianduList[5].tupian?baseurl+nongchanpinjianduList[5].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{nongchanpinjianduList[5].shangpinmingcheng}}</div>
                                    <div>{{nongchanpinjianduList[5].shangpinfenlei}}</div>
                                </div>
							</div>
					    </div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 6px","margin":"0px auto 0px","borderColor":"#999","textAlign":"center","display":"inline-block","right":"7%","top":"10px","background":"none","borderWidth":"1px","width":"auto","lineHeight":"30px","position":"absolute","borderStyle":"solid"}' @click="jump('../nongchanpinjiandu/list.jsp')">
						<span :style='{"color":"#333","fontSize":"16px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="true && 2 == 3" class="recommend-idea" :style='{"padding":"0px 7%","margin":"10px 0 0","flexWrap":"wrap","background":"#faf0e6","display":"flex","width":"100%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/80e36442864b4158aae8264689c04a4d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {


                    // 推荐数据
					shangpinxinxiRecommend: [],



                    nongchanpinjianduList: [],


                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '550px',
								anim: 'default',
								autoplay: 'true',
								interval: '5000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});


                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 10;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "shangpinxinxi/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "shangpinxinxi/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 8,
				}, function(res) {
					vue.shangpinxinxiRecommend = res.data.list
					
					let flag = 4;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendshangpinxinxi', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swipershangpinxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				

                http.request(`nongchanpinjiandu/list`, 'get', {
					sfsh: '是',
					page: 1,
					limit: 6,
				}, function(res) {
					vue.nongchanpinjianduList = res.data.list
					
					let flag = 7;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsnongchanpinjiandu', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swipernongchanpinjiandu', {
								loop: true,
								speed: 600,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":"6000","disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
