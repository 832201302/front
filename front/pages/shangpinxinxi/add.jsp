<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #333;
						font-size: 16px;
						border-color: #e5d9c6;
						line-height: 40px;
						border-radius: 4px;
						outline: none;
						background: #fff;
						width: 360px;
						border-width: 1px;
						border-style: solid;
						height: 40px;
					}
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container" :style='{"width":"100%","padding":"120px 7% 100px","margin":"0px auto","position":"relative","background":"url(http://codegen.caihongy.cn/20230109/138a4d606eae4a168810cef229969885.png) no-repeat center top,url(http://codegen.caihongy.cn/20230109/b95aeae1c1294f398aefb7c6cd5b16de.png) no-repeat center top,url(http://codegen.caihongy.cn/20230109/5ffc803e6682418eb7f0b09a98e35527.png) no-repeat center bottom,#faf0e6"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">商家账号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.shangjiazhanghao" type="text" :readonly="ro.shangjiazhanghao" name="shangjiazhanghao" id="shangjiazhanghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">店铺名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.dianpumingcheng" type="text" :readonly="ro.dianpumingcheng" name="dianpumingcheng" id="dianpumingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">商品编号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.shangpinbianhao" type="text" :readonly="ro.shangpinbianhao" name="shangpinbianhao" id="shangpinbianhao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">商品名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.shangpinmingcheng" type="text" :readonly="ro.shangpinmingcheng" name="shangpinmingcheng" id="shangpinmingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">商品分类</div>
						<select name="shangpinfenlei" id="shangpinfenlei" lay-filter="shangpinfenlei"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in shangpinfenlei" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">商品图片：</div>
						<img :style='{"width":"120px","margin":"0 10px 0 0","objectFit":"cover","height":"80px"}' v-if="detail.shangpintupian" id="shangpintupianImg" :src="baseurl+detail.shangpintupian">
						<input v-if="detail.shangpintupian" type="hidden" :value="detail.shangpintupian" id="shangpintupian" name="shangpintupian" />
						<button v-if="!ro.shangpintupian" :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#e5d9c6","color":"#cca162","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="shangpintupianUpload">
							<i :style='{"color":"#cca162","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传商品图片
						</button>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">商品规格：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.shangpinguige" type="text" :readonly="ro.shangpinguige" name="shangpinguige" id="shangpinguige" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">价格：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.price" type="text" :readonly="ro.price" name="price" id="price" autocomplete="off" class="layui-input">
					</div>

					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","fontSize":"18px","textAlign":"right","fontWeight":"600"}' class="label">商品详情：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#efe4d4","backgroundColor":"#fff","borderRadius":"0","borderWidth":"2px","width":"100%","borderStyle":"solid","height":"auto"}' name="shangpinxiangqing" id="shangpinxiangqing">请输入商品详情</textarea>
					</div>

					<div :style='{"margin":"0 0 0 110px","alignItems":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#59B450","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"0px","background":"#cca162","borderWidth":"0px 0","width":"auto","fontSize":"18px","lineHeight":"40px","borderStyle":"solid","height":"48px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","borderColor":"#999","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"0px","background":"##1e8892","borderWidth":"0px 0","width":"auto","fontSize":"18px","lineHeight":"40px","borderStyle":"solid","height":"48px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                        shangjiazhanghao : false,
                        dianpumingcheng : false,
                        shangpinbianhao : false,
                        shangpinmingcheng : false,
                        shangpinfenlei : false,
                        shangpintupian : false,
                        shangpinguige : false,
                        shangpinxiangqing : false,
                        thumbsupnum : false,
                        crazilynum : false,
                        clicktime : false,
                        price : false,
					},
                    detail: {
                        shangjiazhanghao: '',
                        dianpumingcheng: '',
                        shangpinbianhao: genTradeNo(),
                        shangpinmingcheng: '',
                        shangpinfenlei: '',
                        shangpintupian: '',
                        shangpinguige: '',
                        shangpinxiangqing: '',
                        thumbsupnum: '',
                        crazilynum: '',
                        clicktime: '',
                        price: '',
                    },
					shangpinfenlei: [],
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;


                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList = swiperList;

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
				http.request(`option/shangpinfenlei/shangpinfenlei`,'get',{},(res)=>{
					vue.shangpinfenlei = res.data
				});
				// 上传图片
				var shangpintupianUpload = upload.render({
					//绑定元素
					elem: '#shangpintupianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#shangpintupian').val(url);
							jquery('#shangpintupianImg').attr('src', http.baseurl +url)
							vue.detail.shangpintupian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                var edit = tinymce.render({
                    elem: "#shangpinxiangqing",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
				laydate.render({
					elem: '#clicktime',
					type: 'datetime'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                        if(key=='shangjiazhanghao'){
                                vue.detail['shangjiazhanghao'] = data[`${key}`]
                                vue.ro.shangjiazhanghao = true;
                                continue;
                        }
                        if(key=='dianpumingcheng'){
                                vue.detail['dianpumingcheng'] = data[`${key}`]
                                vue.ro.dianpumingcheng = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='shangjiazhanghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.shangjiazhanghao = true;
                                continue;
                        }
                        if(o=='dianpumingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.dianpumingcheng = true;
                                continue;
                        }
                        if(o=='shangpinbianhao'){
                                vue.detail[o] = obj[o];
                                vue.ro.shangpinbianhao = true;
                                continue;
                        }
                        if(o=='shangpinmingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.shangpinmingcheng = true;
                                continue;
                        }
                        if(o=='shangpinfenlei'){
                                vue.detail[o] = obj[o];
                                vue.ro.shangpinfenlei = true;
                                continue;
                        }
                        if(o=='shangpintupian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.shangpintupian = true;
                                continue;
                        }
                        if(o=='shangpinguige'){
                                vue.detail[o] = obj[o];
                                vue.ro.shangpinguige = true;
                                continue;
                        }
                        if(o=='shangpinxiangqing'){
                                vue.detail[o] = obj[o];
                                vue.ro.shangpinxiangqing = true;
                                continue;
                        }
                        if(o=='thumbsupnum'){
                                vue.detail[o] = obj[o];
                                vue.ro.thumbsupnum = true;
                                continue;
                        }
                        if(o=='crazilynum'){
                                vue.detail[o] = obj[o];
                                vue.ro.crazilynum = true;
                                continue;
                        }
                        if(o=='clicktime'){
                                vue.detail[o] = obj[o];
                                vue.ro.clicktime = true;
                                jquery('#clicktime').val(obj[o]);
                                continue;
                        }
                        if(o=='price'){
                                vue.detail[o] = obj[o];
                                vue.ro.price = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.shangpinmingcheng){
                        layer.msg('商品名称不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.shangpinfenlei){
                        layer.msg('商品分类不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
					var shangpinxiangqing = tinymce.get('#shangpinxiangqing').getContent()
					data.shangpinxiangqing = shangpinxiangqing;
                    if(!isIntNumer(data.thumbsupnum)){
                        layer.msg('赞应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.crazilynum)){
                        layer.msg('踩应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.price){
                        layer.msg('价格不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.price)){
                        layer.msg('价格应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('shangpinxinxi/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('shangpinxinxi' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('shangpinxinxi' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>