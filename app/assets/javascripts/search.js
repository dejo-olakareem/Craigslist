$(document).ready(function(){

	submit()
})



var submit = function(){
	$("form").on("submit",function(e) {
		e.preventDefault()

		var form = $(this) 
		console.log($("h1").text())
		console.log(form.serialize())



		$("h1").each(function(idx, article){
			if ($("#search_term").first().val().trim() === $(article).text().trim()){
				$(article).show()
			} else {
				$(article).hide()
			}
		})
		e.stopPropagation()
	})
}