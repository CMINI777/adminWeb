$(function () {
  
  //DONUT CHART
  var donut = new Morris.Donut({
    element: 'sales-chart',
    resize: true,
    colors: ["#3c8dbc", "#f56954", "#00a65a", "#00c0ef", "#3c8dbc", "#d2d6de"],
    data: [
      {label: "股票机(台)", value: 30},
      {label: "充电桩(台)", value: 12},
      {label: "洗车机(台)", value: 12},
      {label: "自动取款机(台)", value: 20},
      {label: "智能门禁设备(台)", value: 10},
      {label: "智能读取机(台)", value: 20}
    ],
    hideHover: 'auto'
  });
  
  //DONUT CHART
  var donut2 = new Morris.Donut({
    element: 'sales-chart2',
    resize: true,
    colors: ["#5B90BF", "#96b5b4", "#a3be8c", "#ab7967", "#d08770"],
    data: [
      {label: "极其严重(台)", value: 12},
      {label: "较严重(台)", value: 30},
      {label: "一般(台)", value: 20},
      {label: "较轻微(台)", value: 30},
      {label: "轻微(台)", value: 20}
    ],
    hideHover: 'auto'
  });
  
});