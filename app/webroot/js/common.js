$(function() {
	$(":date").dateinput({
		// this is displayed to the user
		format : 'yyyy-mm-dd',
		offset : [-35, 330]
	});
	$(".index .search-generic").click(function() {
		search();
	});
	$(".text-search-generic").keypress(function(e) {
		if(e.keyCode == 13){
			search();
		}
	});
	function search() {
		var url = BJS.setParam('query', $(".index .search input[type='text']").val());
		var indexQuery = url.indexOf('query');
		console.log(indexQuery);
		var beforeQuery = url.substring(0, indexQuery);
		var afterQuery = url.substring(indexQuery);
		// console.log();
		if(url.indexOf("index") < 0) {
			document.location = beforeQuery + "index/" + afterQuery;
		} else {
			document.location = beforeQuery + afterQuery;
		}
	}
	
	/*FUNCIONALIDAD PROPIA DEL PROYECT*/
	$.each($("#main-menu > ul > li"),function(i,val){
		if($(val).find("ul").length){
			$(val).addClass("opened");
		}
	});
	$("#main-menu > ul > li").click(function(e){
		if($(e.target).is("#main-menu > ul > li")){// Si el evento lo lanza el li
			if($(this).is('.opened')){
				$(this).removeClass('opened');
				$(this).addClass('closed')
			}else{
				if($(this).is('.closed')){
					$(this).removeClass('closed');
					$(this).addClass('opened')
				}
			}
		}
	});
	
	$('form').validate();

});
