
			window.onload=function(){
				$(function(){
					var indexy=true;
					var yi = document.getElementById("1");
					$(".header-top-three-ul").click(function(){
						yi.src="../img/移动.mp3";
						if(indexy==true){
							indexy=false;
							$(".header-top-three-ul>li").css("border","1px solid #008cff");
							$(".header-top-four").stop(true,true).slideDown(100);
						}else{
							indexy=true;
							$(".header-top-three-ul>li").css("border","1px solid #8A8A8A");
							$(".header-top-four").stop(true,true).slideUp(100);
						}
					});
					
					
					var imgs = document.getElementById("ul1").children;
					var botton = document.getElementById("ul2").children;
					var left = document.getElementById("left-botton");
					var right = document.getElementById("right-botton");
					var index = 0;
					var dingshiqi;
					congqi();
					function congqi(){
						dingshiqi=setInterval(function(){
							index++;
							if(index==imgs.length){
								index=0;
							}
							for(var i = 0;i<imgs.length;i++){
								imgs[i].style.cssText="z-index:0;";
								botton[i].style.cssText="background-color:#fff;color:rgb(0,140,255);";
							}
							imgs[index].style.cssText="z-index:100;";
							botton[index].style.cssText="background-color:rgb(0,140,255);color:#fff;";
						},4000);
					}
					left.onclick=function(){
						clearInterval(dingshiqi);
						index--;
						if(index<0){
							index=imgs.length-1;
						}
						for(var i = 0;i<imgs.length;i++){
							imgs[i].style.cssText="z-index:0;";
							botton[i].style.cssText="background-color:#fff;color:rgb(0,140,255);";
						}
						imgs[index].style.cssText="z-index:100;";
						botton[index].style.cssText="background-color:rgb(0,140,255);color:#fff;";
						congqi();
					}
					right.onclick=function(){
						clearInterval(dingshiqi);
						index++;
						if(index==imgs.length){
							index=0;
						}
						for(var i = 0;i<imgs.length;i++){
							imgs[i].style.cssText="z-index:0;";
							botton[i].style.cssText="background-color:#fff;color:rgb(0,140,255);";
						}
						imgs[index].style.cssText="z-index:100;";
						botton[index].style.cssText="background-color:rgb(0,140,255);color:#fff;";
						congqi();
					}
					botton[0].onclick=function(){
						clearInterval(dingshiqi);
						index=0;
						for(var i = 0;i<imgs.length;i++){
							imgs[i].style.cssText="z-index:0;";
							botton[i].style.cssText="background-color:#fff;color:rgb(0,140,255);";
						}
						imgs[index].style.cssText="z-index:100;";
						botton[0].style.cssText="background-color:rgb(0,140,255);color:#fff;";
						congqi();
					}
					botton[1].onclick=function(){
						clearInterval(dingshiqi);
						index=1;
						for(var i = 0;i<imgs.length;i++){
							imgs[i].style.cssText="z-index:0;";
							botton[i].style.cssText="background-color:#fff;color:rgb(0,140,255);";
						}
						imgs[index].style.cssText="z-index:100;";
						botton[1].style.cssText="background-color:rgb(0,140,255);color:#fff;";
						congqi();
					}
					botton[2].onclick=function(){
						clearInterval(dingshiqi);
						index=2;
						for(var i = 0;i<imgs.length;i++){
							imgs[i].style.cssText="z-index:0;";
							botton[i].style.cssText="background-color:#fff;color:rgb(0,140,255);";
						}
						imgs[index].style.cssText="z-index:100;";
						botton[2].style.cssText="background-color:rgb(0,140,255);color:#fff;";
						congqi();
					}
				})
			}