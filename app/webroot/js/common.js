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

});
