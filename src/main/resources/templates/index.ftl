<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="/css/index.css" />
	

	<!-- 省市级联的js -->
	<script src="/js/jquery-1[1].2.6.js" type="text/javascript"></script>
	<script src="/js/jquery.provincesCity.js" type="text/javascript"></script>
	<script src="/js/provincesdata.js" type="text/javascript"></script> 

	
<script>


$(function() {

		//省市联动
		$("#selectLocation1").ProvinceCity();
});

//精准 搜索
function serachRoad(){
		var sheng = $("#serachRoad_sheng").val();
		var shi = $("#serachRoad_shi").val();
		var qu = $("#serachRoad_qu").val();
		var local = $("#suggestId3").val();
		var weizhi = sheng+"省"+shi+"市"+qu+local;
		//alert(weizhi);
		var myGeo = new BMap.Geocoder();
		// 将地址解析结果显示在地图上,并调整地图视野
		myGeo.getPoint(weizhi, function(point){
			if (point) {
				map.centerAndZoom(point, 16);
				map.addOverlay(new BMap.Marker(point));
			}else{
				alert("您选择地址没有解析到结果!");
			}
		}, sheng);
}



</script>
	
	
</head>
<body>
<div id="body">
	<div id="top">
		<div class="top_left"></div>
		<div class="item1"><a href="">首 页</a></div>
		<div class="item1"><a href="">新闻</a></div>
		<div class="item1"><a href="">新 房</a></div>
		<div class="item1"><a href="">二手房</a></div>
		<div class="item1"><a href="">租房</a></div>
		<div class="item1"><a href="">商铺</a></div>
		<div class="item1"><a href="">写字楼</a></div>
		<div class="item1"><a href="">海外地产</a></div>
		<div class="item1"><a href="">楼讯</a></div>
		<div class="item1"><a href="">出租</a></div>
		<div class="item1"><a href="">求租</a></div>
		<div class="item1"><a href="">出售</a></div>
		<div class="item1"><a href="">求购</a></div>
		<div class="item1"><a href="">留言板</a></div>
		

		<div class="item2"><a href="">经纪人登录</a></div>
		<div class="item2"><a href="">用户登录</a></div>
		<div class="item2"><a href="">注册 </a></div>
	</div>
	<div id="logo">
		<div class="top_left"></div>
		<div id="logo1"></div>
		<div id="city">首页 > 杭州</div> 
		<div id="search">
			<form action="">
				<input type="text"  	id="search_text" value="search" />
				<input type="button" 	id="search_button" value="search" />
			</form>
		</div> 
	</div>
	
	
	
	
	
	<div id="daohang">
		<div id="daohang2">
			<div data-role="none" id="selectLocation1">
				<table>
					<tr>
						<td>区域：</td>
						<td>选择省</td>
						<td>
							<select id="serachRoad_sheng" data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
						</td>
						<td>选择市</td>
						<td>
							<select id="serachRoad_shi" data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
						</td>
						<td>选择区</td>
						<td>
							<select id="serachRoad_qu"  data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
						</td>
						<td></td>
						<td></td>
						
					</tr>
					
					<tr>
						<td>租金：</td>
						<td>最低价</td>
						<td>
							<select id="serachRoad_sheng" data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'>
								<option value="0" > 0 </option>
								<option value="300" > 300 </option>
								<option value="500" > 500 </option>
								<option value="600" > 600 </option>
								<option value="700" > 700 </option>
								<option value="800" > 800 </option>
								<option value="900" > 900 </option>
								<option value="1000" > 1000 </option>
								<option value="1200" > 1200 </option>
								<option value="1400" > 1400 </option>
								<option value="1600" > 1600 </option>
								<option value="1800" > 1800 </option>
								<option value="2000" > 2000 </option>
								<option value="2500" > 2500 </option>
								<option value="3000" > 3000 </option>
								<option value="3500" > 3500 </option>
								<option value="4000" > 4000 </option>
								<option value="5000" > 5000 </option>
								<option value="6000" > 6000 </option>
								<option value="7000" > 7000 </option>
								<option value="10000" > 1万 </option>
								<option value="20000" > 2万 </option>
								<option value="60000" > 6万 </option>
								<option value="100000" > 10万 </option>
								<option value="200000" > 20万 </option>
								<option value="300000" > 30万 </option>
								<option value="500000" > 50万 </option>
								<option value="1000000" > 100万 </option>
								<option value="10000000" > 1000万 </option>
							</select>
						</td>
						<td>最高价</td>
						<td>
							<select id="serachRoad_sheng" data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'>
								<option value="0" > 不限 </option>
								<option value="500" > 500 </option>
								<option value="600" > 600 </option>
								<option value="700" > 700 </option>
								<option value="800" > 800 </option>
								<option value="900" > 900 </option>
								<option value="1000" > 1000 </option>
								<option value="1200" > 1200 </option>
								<option value="1400" > 1400 </option>
								<option value="1600" > 1600 </option>
								<option value="1800" > 1800 </option>
								<option value="2000" > 2000 </option>
								<option value="2500" > 2500 </option>
								<option value="3000" > 3000 </option>
								<option value="3500" > 3500 </option>
								<option value="4000" > 4000 </option>
								<option value="5000" > 5000 </option>
								<option value="6000" > 6000 </option>
								<option value="7000" > 7000 </option>
								<option value="10000" > 1万 </option>
								<option value="20000" > 2万 </option>
								<option value="60000" > 6万 </option>
								<option value="100000" > 10万 </option>
								<option value="200000" > 20万 </option>
								<option value="300000" > 30万 </option>
								<option value="500000" > 50万 </option>
								<option value="1000000" > 100万 </option>
								<option value="10000000" > 1000万 </option>
								<option value="1000000000" > 10亿 </option>
							</select>
						</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					
					
					<tr>
						<td>房型</td>
						<td>家室个数</td>
						<td>
							<select id="serachRoad_sheng" data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'>
								<option value="0" > 不限 </option>
								<option value="1" > 一室 </option>
								<option value="2" > 二室 </option>
								<option value="3" > 三室 </option>
								<option value="4" > 四室 </option>
								<option value="5" > 五室 </option>
								<option value="6" > 六室 </option>
								<option value="7" > 六室以上 </option>
							</select>
						</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td style="width:400px;" ></td>
						<td>
							<input type="button" 	id="search_button2" value="search" style="width:100px;background:orange;" />
						</td>
					</tr>
					
				</table>
				
			</div>
			
			
		</div>
		

	</div>
	
	
	<div id="content"  src="www.ba" >
			dsgvfsd
	</div>
	
	
</div>

</body>
</html>