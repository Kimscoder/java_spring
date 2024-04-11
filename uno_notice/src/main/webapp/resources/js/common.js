//팝업창들 뛰우기
//새로운 Window창을 Open할 경우 사용되는 함수 ( arg : 주소 , 창타이틀 , 넓이 , 길이 )
function OpenWindow() {
	window.location.href = 'regist.do';
	 window.close();
}


//팝업창 닫기
function CloseWindow(){
	
	window.close();
	window.opener.location.reload(true);

}









