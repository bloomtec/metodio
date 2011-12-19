$(function(){
	$(".index .search-generic").click(function(){
		alert(BJS.setParam('query',$(".index .search input[type='text']").val()));
	});
});