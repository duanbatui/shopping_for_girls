
//用于判断导航分类，是否活动(这个为特殊处理)
$(document).on('mouseover', '#left_nav  .while', function() {
$(this).addClass("bg_color");

 

});

$(document).on('mouseout', '#left_nav  .while', function() {

$(this).removeClass("bg_color");


});





$(document).on('mouseover', '#right_nav li a font', function() {
$(this).css("font-size","15px");
});
$(document).on('mouseout', '#right_nav li a font', function() {

$(this).css("font-size","");
});

/**/
$(document).on('mouseover', '#pro_nav', function() {
$("#production").slideDown(600);
});


$(document).on('mouseout', '#production,#fenlei', function(e) {


var x,y,divx1,divx2,divy1,divy2;
x=e.clientX;
y=e.clientY;
//获取隐藏DIV的范围
var offset=$(this).offset();

divx1=offset.left;
divy1=offset.top;
//alert(divx1+"divx1");
var divx2=divx1+780;
var divy2=divy1+320;
//下面是获取LI所在DIV范围
var offset2=$("#fenlei").offset();
var div2x1=offset2.left;
var div2y1=offset2.top;

var div2x2=div2x1+110;
var div2y2=div2y1+50;
//alert(div2x2+"|"+div2y2);
if(x<divx1||x>divx2||y>divy2||x<div2x1&&y<divy1||x>div2x2&&y<div2y2)
{
$('#production').fadeOut(400);
}


});



function go_top()
{
$("html,body").animate({scrollTop:0},900);

}
function goshangpin()
{
$("body").animate({scrollTop:$("#production_introduce").offset().top},600);

}

$(function(){
	var oFocus=$('#focus'),
		oRight=oFocus.find('.right'),
		oLeft=oFocus.find('.left'),
		aRLi=oRight.find('li'),
		aLLi=oLeft.find('li'),
		index=0,
		timer = null;
	aRLi.click(function(){
		index=$(this).index()
		$(this).addClass('active').siblings().removeClass();
		aLLi.eq(index).addClass('active').siblings().removeClass();
		aLLi.eq(index).stop().animate({'opacity':1},300).siblings().stop().animate({'opacity':0},300);
		stopFoucs();
	})
	oLeft.mouseenter(function(){
		stopFoucs();
	}).mouseleave(function(){		
		startFocus();
	});
	timer = setInterval(function(){
		startFocus();
	},5000);
	function startFocus(){
		index++;
		index = index > aRLi.size()-1 ? 0 :index;

		aLLi.eq(index).addClass('active').siblings().removeClass();
		aLLi.eq(index).stop().animate({'opacity':1},300).siblings().stop().animate({'opacity':0},300);
		aRLi.eq(index).addClass('active').siblings().removeClass();
	}
	function stopFoucs(){
		clearInterval(timer);
	}
})


$(document).on('click', '#introduce_left ul li', function() {
$("#introduce_left ul li").removeClass("active");
$(this).addClass("active");
var name=$(this).attr("title");
//alert(name);
switch(name)
{
case "clothes":$("#introduce_right div").fadeOut(100);$("#clothes").fadeIn(500);break;
case "huazhuang":$("#introduce_right div").fadeOut(100);$("#huazhuang").fadeIn(500);break;
case "meirong":$("#introduce_right div").fadeOut(100);$("#meirong").fadeIn(500);break;


}
});

function search()
{
	var search_name=$("#search").val();
	$("#search").attr("value","");
	var Search;
	if(search_name)
	{


		
		$.post("search_production.jsp",{Search:search_name},function(data,statu){
		  //搜索完成后的动作；
			//alert(data);
			window.open("productions_show.jsp"); 
		});


		return true;
		
		
		
	}
	else
	{
		alert("请输入关键字");
		
	}
	
	
}

function logout()
{
	var user_statu;
	$.post("logout.jsp",{user_statu:"false"},function(data,statu){
		  //搜索完成后的动作；
			//alert(data);
			window.location.href="index.jsp"; 
		});
}
