$(function () {
    navicatActiveProccess('main');
    initEchartsResource();
});

function initEchartsResource(){
    $.ajax({
        type: "POST",
        url: path + "/resource/showEchartsByRole.do",
        dataType: "json",
        error: function () {
            tipDialog("提交失败，连接错误。请刷新页面重试。");
        }, success: function (re) {
           var myChartBar=echarts.init(document.getElementById('barbyrole'));
           var myChartPie=echarts.init(document.getElementById('piebyrole'));
           myChartBar.showLoading({
               text: '正在努力读取数据中...'
           });
           myChartPie.showLoading({
           	   text: '正在努力读取数据中...'
           });
           myChartBar.hideLoading();
           myChartPie.hideLoading();
           var option={
           	 title: { 
           	 	text:'系统来源统计图'
           	 },
           	    color: ['#3398DB'],
           	    tooltip : {
                  trigger: 'axis'
                           },
               grid: {
                   left: '3%',
                   right: '4%',
                   bottom: '3%',
                   containLabel: true
                      },
               xAxis : [
                   {
                    type : 'category',
                    data : ['用户资源', '管理员资源', '第三方资源'],
                    axisTick: {
                    alignWithLabel: true
                               }
                    }
                        ],
                yAxis : [  
                          {  
                            type : 'value'  
                           }  
                         ],
                 series : [
                         {
			                name:'数量',
			                type:'bar',
			                barWidth: '60%',
			                data:[re.countUser,re.countAdmin,re.countThirdPart]
                          }
                           ]
                 
                
           	    
               };
           var optionpie={
           	       title : {
           	       	    text:'系统资源来源分布',
           	       	    subtext: '',
           	       	    x:'center'
           	       },
           	       tooltip : {
							      trigger: 'item',
							      formatter: "{a} <br/>{b} : {c} ({d}%)"
							  },
			         legend: {
							        orient: 'vertical',
							        left: 'left',
							        data: ['用户资源', '管理员资源', '第三方资源']
							  },
					  calculable : true,
					   series : [
							        {
							            name: '资源来源',
							            type: 'pie',
							            radius : '55%',
							            center: ['50%', '60%'],
							            data:[
							                {value:re.countUser, name:'用户资源'},
							                {value:re.countAdmin, name:'管理员资源'},
							                {value:re.countThirdPart, name:'第三方资源'},
							            ],
							            itemStyle: {
							                emphasis: {
							                    shadowBlur: 10,
							                    shadowOffsetX: 0,
							                    shadowColor: 'rgba(0, 0, 0, 0.5)'
							                }
							            }
							        }
                                 ],
					   color: ['red', 'green','blueviolet']
           }
            
           myChartBar.setOption(option);
           myChartPie.setOption(optionpie);
        }
    });
    $.ajax({
        type: "POST",
        url: path + "/resource/showEchartsByResourceType.do",
        dataType: "json",
        error: function () {
            tipDialog("提交失败，连接错误。请刷新页面重试。");
        }, success: function (re) {
           var myChartBar=echarts.init(document.getElementById('barbyresourcetype'));
           var myChartPie=echarts.init(document.getElementById('piebyresourcetype'));
           myChartBar.showLoading({
               text: '正在努力读取数据中...'
           });
           myChartPie.showLoading({
           	   text: '正在努力读取数据中...'
           });
           myChartBar.hideLoading();
           myChartPie.hideLoading();
           var option={
           	title: { 
           	 	text:'系统类型统计图'
           	 },
           	    color: ['#FF7744 '],
           	    tooltip : {
                  trigger: 'axis'
                           },
               grid: {
                   left: '3%',
                   right: '4%',
                   bottom: '3%',
                   containLabel: true
                      },
               xAxis : [
                   {
                    type : 'category',
                    data : ['图片资源', '文档资源', '音频资源','视频资源'],
                    axisTick: {
                    alignWithLabel: true
                               }
                    }
                        ],
                yAxis : [  
                          {  
                            type : 'value'  
                           }  
                         ],
                 series : [
                         {
			                name:'数量',
			                type:'bar',
			                barWidth: '60%',
			                data:[re.countpic,re.countdoc,re.countvoice,re.countvideo]
                          }
                           ]
                 
                
           	    
               };
           var optionpie={
           	       title : {
           	       	    text:'系统资源类型分布',
           	       	    subtext: '',
           	       	    x:'center'
           	       },
           	       tooltip : {
							      trigger: 'item',
							      formatter: "{a} <br/>{b} : {c} ({d}%)"
							  },
			         legend: {
							        orient: 'vertical',
							        left: 'left',
							        data: ['图片资源', '文档资源', '音频资源','视频资源']
							  },
					  calculable : true,
					   series : [
							        {
							            name: '资源类型',
							            type: 'pie',
							            radius : '55%',
							            center: ['50%', '60%'],
							            data:[
							                {value:re.countpic, name:'图片资源'},
							                {value:re.countdoc, name:'文档资源'},
							                {value:re.countvoice, name:'音频资源'},
							                {value:re.countvideo, name:'视频资源'},
							            ],
							            itemStyle: {
							                emphasis: {
							                    shadowBlur: 10,
							                    shadowOffsetX: 0,
							                    shadowColor: 'rgba(1, 0, 0, 0.5)'
							                }
							            }
							        }
                                 ]
					  
           }
            
           myChartBar.setOption(option);
           myChartPie.setOption(optionpie);
        }
    });
    $.ajax({
        type: "POST",
        url: path + "/resource/showEchartsByDate.do",
        dataType: "json",
        contentType: "application/x-www-form-urlencoded; charset=utf-8", 
        error: function () {
            tipDialog("提交失败，连接错误。请刷新页面重试。");
        }, success: function (re) {
        	var names=[];
        	var datas=[];
        	for(var key in re){
        		names.push(key);
        		datas.push(re[key]);
        	}
        	for(var i=0;i<names.length;i++)
        	{
        		for(var j=0;j<names.length-i-1;j++)
        		{
        			if(names[j]>names[j+1])
        			{
        				var obj1=names[j];
        				names[j]=names[j+1];
        				names[j+1]=obj1;
        				var obj2=datas[j];
        				datas[j]=datas[j+1];
        				datas[j+1]=obj2;
        			}
        		}
        	}
        	var myChart=echarts.init(document.getElementById('line'));
        	option={
        		 title: {
                    text: '一周资源上传量变化曲线'
                },
                tooltip: {
                    trigger: 'axis'

                },
                legend: {
                    data:['一周资源上传量变化曲线']
                },
                grid: {
                    left: '1%',
                    right: '1%',
                    bottom: '3%',
                    containLabel: true
                },
                toolbox: {
                    show: false,
                    feature: {
                        dataZoom: {
                            yAxisIndex: 'none'
                        },
                        dataView: {readOnly: false},
                        magicType: {type: ['line', 'bar']},
                        restore: {},
                        saveAsImage: {}
                    }
                },
                color:["red","#CD3333"],
                xAxis:  {
                    type: 'category',
                    boundaryGap: false,
                    data : names,
                    axisTick: {length:2}
                },
                yAxis: {
                    type: 'value',
                    name: '单位（个）',
                    axisLabel: {
                        formatter: '{value}'
                    }
                },
                series: [
                    {
                        name:'一周资源上传量变化曲线',
                        type:'line',
                        data:datas
                       
                    }
                        ]
        	}
        	myChart.setOption(option);
        }
    });
}