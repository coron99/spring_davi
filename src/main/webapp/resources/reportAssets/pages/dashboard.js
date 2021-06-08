  'use strict';
    $(document).ready(function() {
 dashboard();

 /*Counter Js Starts*/
$('.counter').counterUp({
    delay: 10,
    time: 400
});
/*Counter Js Ends*/

//  Resource bar
    $(".resource-barchart").sparkline([5, 6, 2, 4, 9, 1, 2, 8, 3, 6, 4,2,1,5], {
              type: 'bar',
              barWidth: '15px',
              height: '80px',
              barColor: '#fff',
            tooltipClassname:'abc'
          });

            function setHeight() {
                var $window = $(window);
                var windowHeight = $(window).height();
                if ($window.width() >= 320) {
                    $('.user-list').parent().parent().css('min-height', windowHeight);
                    $('.chat-window-inner-content').css('max-height', windowHeight);
                    $('.user-list').parent().parent().css('right', -300);
                }
            };
            setHeight();

            $(window).on('load',function() {
                setHeight();
            });
        });

 $(window).resize(function() {
        dashboard();
        //  Resource bar
    $(".resource-barchart").sparkline([5, 6, 2, 4, 9, 1, 2, 8, 3, 6, 4,2,1,5], {
              type: 'bar',
              barWidth: '15px',
              height: '80px',
              barColor: '#fff',
            tooltipClassname:'abc'
          });
    });

function dashboard(){

};

  $.ajax({
	 url : "/report/barChartAjax",
	 type : "get",
	 // 서버에서 반환되는 데이터 타입
	 dataType : "json",
	 success: function(result){
		var categoriesArr = new Array();
		var dataArr = new Array();
		var status = 0;
		
		result.forEach(function(el, idx){
			categoriesArr.push(el.regDate);
			dataArr.push(el.weight);
			status = el.status;
		});
		
		 Highcharts.chart('barchart', {
			 
			  title: {
		          text: 'Weight Change Chart'
		      },
		      xAxis: {
		          categories: categoriesArr
		      },
		      series: [{
		          type: 'column',
		          name: 'weight(bar)',
		          data: dataArr,
		          color:'#2BBBAD'
		      },{
		          type: 'spline',
		          name: 'weight(line)',
		          data: dataArr,
		          marker: {
		              lineWidth: 2,
		              lineColor: Highcharts.getOptions().colors[3],
		              fillColor: 'white'
		          }
		      }]
		  });
		 
		 Highcharts.chart('piechart', {
		      chart: {
		          type: 'pie',
		          options3d: {
		              enabled: true,
		              alpha: 20,
		              beta: 0
		          }
		         //  backgroundColor:'#fff'
		      },
		      title: {
		          text: 'Goal Achievement Rate'
		      },
		      tooltip: {
		          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		      },
		      plotOptions: {
		          pie: {
		              allowPointSelect: true,
		              cursor: 'pointer',
		              depth: 35,
		              dataLabels: {
		                  enabled: true,
		                  format: '{point.name}'
		              }
		          }
		      },
		      series: [{
		          type: 'pie',
		          name: 'Browser share',
		          data: [
		              {
		                 name: 'Success',
		                 y: status,
		                 sliced: true,
		                 selected: true,
		                 color:'#2BBBAD'
		              },
		              {
		                 name: 'The Rest',
		                 y: 100 - status,
		                 color:'#aa66cc'
		              }
		          ]
		      }]
		  });
		 
	 }
  }); 	 


  