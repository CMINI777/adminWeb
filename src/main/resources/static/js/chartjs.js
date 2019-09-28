$(function () {
  //-------------
  //- PIE CHART -
  //-------------
  // Get context with jQuery - using jQuery's .get() method.
  var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
  var pieChart = new Chart(pieChartCanvas);
  var pieChartCanvas2 = $("#pieChart2").get(0).getContext("2d");
  var pieChart2 = new Chart(pieChartCanvas2);
  var PieData = [
    {
        value: 600,
        color: "#00c0ef",
        highlight: "#00c0ef",
        label: "股票机"
    },
    {
      value: 700,
      color: "#f56954",
      highlight: "#f56954",
      label: "充电桩"
    },
    {
      value: 500,
      color: "#00a65a",
      highlight: "#00a65a",
      label: "洗车机"
    },
    {
      value: 400,
      color: "#f39c12",
      highlight: "#f39c12",
      label: "自动取款机"
    },
    {
      value: 300,
      color: "#3c8dbc",
      highlight: "#3c8dbc",
      label: "智能门禁设备"
    },
    {
      value: 100,
      color: "#d2d6de",
      highlight: "#d2d6de",
      label: "智能读取机"
    }
  ];
  var PieData2 = [
                 {
                   value: 700,
                   color: "#5B90BF",
                   highlight: "#5B90BF",
                   label: "极其严重"
                 },
                 {
                   value: 500,
                   color: "#96b5b4",
                   highlight: "#96b5b4",
                   label: "较严重"
                 },
                 {
                   value: 400,
                   color: "#a3be8c",
                   highlight: "#a3be8c",
                   label: "一般"
                 },
                 {
                   value: 600,
                   color: "#ab7967",
                   highlight: "#ab7967",
                   label: "较轻微"
                 },
                 {
                   value: 300,
                   color: "#d08770",
                   highlight: "#d08770",
                   label: "轻微"
                 }
               ];
  var string = '<ul class=\'chart-legend\'>';
  for (var i=0; i<PieData.length; i++){
	  string += '<li><i class="fa fa-circle-o" style="color:'+PieData[i].color+'"></i>  '+PieData[i].label+'<span style="font-size: 18px;margin-left: 6px;margin-right: 6px;">'+PieData[i].value+'</span>台</li>';
	}
  string += '</ul>';
  var string2 = '<ul class=\'chart-legend\'>';
  for (var i=0; i<PieData2.length; i++){
	  string2 += '<li><i class="fa fa-circle-o" style="color:'+PieData2[i].color+'"></i>  '+PieData2[i].label+'<span style="font-size: 18px;margin-left: 6px;margin-right: 6px;">'+PieData[i].value+'</span>台</li>';
	}
  string2 += '</ul>';
  $("#chart_legend").html(string);
  $("#chart_legend2").html(string2);
  var pieOptions = {
    //Boolean - 我们是否应该在每个细分上显示一个中风
    segmentShowStroke: true,
    //String - 每个段的颜色行程
    segmentStrokeColor: "#fff",
    //Number - 每个段行程的宽度
    segmentStrokeWidth: 2,
    //Number - 我们从中间切出的图表的百分比
    percentageInnerCutout: 50, // This is 0 for Pie charts
    //Number - 动画步数
    animationSteps: 100,
    //String - 动画宽松效果
    animationEasing: "easeOutBounce",
    //Boolean - 我们是否为甜甜圈旋转动画
    animateRotate: true,
    //Boolean - 我们是否从中心动画缩放甜甜圈
    animateScale: false,
    //Boolean - 是否使图表响应窗口大小调整
    responsive: true,
    // Boolean - 是否在响应时保持启动长宽比，如果设置为false，将占用整个容器
    maintainAspectRatio: true,
 	// String - 图例模版
    //legendTemplate: '<ul class=\'<%=name.toLowerCase()%>-legend\'><% for (var i=0; i<datasets.length; i++){%><li><span style=\'background-color:<%=datasets[i].lineColor%>\'></span><%=datasets[i].label%></li><%}%></ul>',
    // String - 工具提示模板
    tooltipTemplate: '<%=label%> <%=value %> 台'
  };
  //Create pie or douhnut chart
  // You can switch between pie and douhnut using the method below.
  pieChart.Doughnut(PieData, pieOptions);
  
  pieChart2.Doughnut(PieData2, pieOptions);
});