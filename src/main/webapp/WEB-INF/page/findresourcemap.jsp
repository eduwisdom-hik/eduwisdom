
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>地图找资源</title>
    <style type="text/css">
        html{height:100%}
        body{height:100%;margin:0px;padding:0px}
        #container{height:100%}
    </style>
    <script src="http://api.map.baidu.com/api?v=1.4" type="text/javascript"></script>
</head>
<body>
<input type="text" id="cityName" value="杭州"/>
<input type="button" onclick="setCity()" value="查找" />
<div id="container"></div>
<script type="text/javascript">
    var map = new BMap.Map("container");        //在container容器中创建一个地图,参数container为div的id属性;
 
    var point = new BMap.Point(120.2,30.25);    //创建点坐标
    map.centerAndZoom(point, 14);                //初始化地图，设置中心点坐标和地图级别
    map.enableScrollWheelZoom();                //激活滚轮调整大小功能
    map.addControl(new BMap.NavigationControl());    //添加控件：缩放地图的控件，默认在左上角；
    map.addControl(new BMap.MapTypeControl());        //添加控件：地图类型控件，默认在右上方；
    map.addControl(new BMap.ScaleControl());        //添加控件：地图显示比例的控件，默认在左下方；
    map.addControl(new BMap.OverviewMapControl());  //添加控件：地图的缩略图的控件，默认在右下方； TrafficControl    
 
    var search = new BMap.LocalSearch("中国", {
      onSearchComplete: function(result){
        if (search.getStatus() == BMAP_STATUS_SUCCESS){
          var res = result.getPoi(0);
          var point = res.point;
          map.centerAndZoom(point, 11);
        }
      },renderOptions: {  //结果呈现设置，
        map: map,  
        autoViewport: true,  
        selectFirstResult: true 
      } ,onInfoHtmlSet:function(poi,html){//标注气泡内容创建后的回调函数，有了这个，可以简单的改一下返回的html内容了。
        // alert(html.innerHTML)
      }//这一段可以不要，只不过是为学习更深层次应用而加入的。
    });
 
    function setCity(){
      search.search(document.getElementById("cityName").value);
    }
 
    search.search(document.getElementById("cityName").value);
    var icon = new BMap.Icon('../images/position.png', new BMap.Size(20, 32), {  
        anchor: new BMap.Size(10, 30),              //图标的定位点相对于图标左上角的偏移值  
        infoWindowAnchor: new BMap.Size(10, 0)      //信息窗口开启位置相对于图标左上角的偏移值  
    }); 
    for(var i=0;i<100;i++){
    var mkr = new BMap.Marker(new BMap.Point(119.670607+Math.random(),29.776462+Math.random()), {//创建一个图标实例  
        icon: icon  
    });  
      
    var opts = {  
      width : 200,     // 信息窗口宽度    如果指定的宽度为0，则信息窗口的宽度将按照其内容自动调整  
      height: 0,     // 信息窗口高度  如果指定的高度为0，则信息窗口的高度将按照其内容自动调整  
      title : "XX教育资源" ,// 信息窗口标题  
      
      enableMessage:false//设置允许信息窗发送短息  
      //message:这个是指短信内容  
    }  
    var sContent="<div>"
                 +"<p style='margin:0 0 5px 0;padding:0.2em 0'>" 
                 +"地址：杭州市XX区XX大街XX号XX大楼XX层"
                 +"</p>"
                 +"<p style='margin:0 0 5px 0;padding:0.2em 0'>" 
                 +"联系电话：0571-88888888"
                 +"</p>"
                 +"<p style='margin:0 0 5px 0;padding:0.2em 0'>" 
                 +"综合评分：4.8分"
                 +"</p>"+"</div>"
    var infoWindow = new BMap.InfoWindow(sContent, opts);  // 创建信息窗口对象  
    mkr.addEventListener("click", function(){this.openInfoWindow(infoWindow);});    //在图标实例上添加鼠标点击事件  
      
    //添加鼠标点击事件也可简写为如下形式,可以方便在循环添加事件使用闭包的时候使用  
    //mkr.addEventListener("click", function(){this.openInfoWindow(new BMap.InfoWindow("地址：市东城区王府井大街88号乐天银泰百货八层",{width : 200,height: 0,title : "海底捞王府井店",enableMessage:false}));});  
      
    map.addOverlay(mkr);        //将覆盖物添加到地图中,一个覆盖物实例只能向地图中添加一次  
    }
</script>
</body>
</html>