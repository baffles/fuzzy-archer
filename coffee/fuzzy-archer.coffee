# Pretty simple... on load, go through and rewrite comments

$ () ->
	$comments = $('#ArticleFull,.ArticleBody,.ArticleContainer').find('*').contents().filter () -> @nodeType is 8
	for c in $comments
		$display = $("<span>")
		$display.append $("<span>").text("<!-- ").css('color', 'darkgray')
		$display.append $("<span>").text(c.nodeValue.trim()).css('color', 'green')
		$display.append $("<span>").text(" -->").css('color', 'darkgray')
		$(c).replaceWith $display

	$('#Footer').append $('<address>').text 'fuzzy-archer active'
