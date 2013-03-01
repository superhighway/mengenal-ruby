(function() {
	var editor = null;
	if (window.ace) {
    editor = ace.edit("snippet-runner-code-content");
    editor.setTheme("ace/theme/twilight");
    editor.getSession().setMode("ace/mode/ruby");
	}
	function setEditorValue(snippet) {
		if (window.ace && editor != null) {
			editor.getSession().setValue(snippet);
		} else {
			$("#snippet-runner-code-content").html('<pre>' + snippet + '</pre>');
		}
	}
	function getEditorValue() {
		if (window.ace && editor != null) {
			return editor.getSession().getValue();
		} else {
			return $("#snippet-runner-code-content").text();
		}
	}

	var $body = $('body'),
	    // evalURL = 'http://mengenal-ruby-eval.herokuapp.com',
			evalURL = 'http://localhost:4000',
	    snippetRequestError = $('#snippet-request-error-template').html(),
			$runner = $('#snippet-runner');
	$('#snippet-request-error-template').remove();
	
	$('.snippet-runner-code-action-run').click(function() {
		var $outputTarget = $runner.find('.snippet-runner-output'),
				snippet = getEditorValue();

		$.post(evalURL, { snippet: snippet }, function(data, textStatus, xhr) {
			$outputTarget.text(data);
		}).fail(function() {
			$outputTarget.html(snippetRequestError);
		});
	});

	$('.toggle-snippet-runner').click(function() {
		$body.removeClass('fixed-toc-visible');
		var className = 'snippet-runner-visible';
		if ($body.hasClass(className)) {
			$body.removeClass(className);
		} else {
			$body.addClass(className);
		}
	});

	$('.toggle-fixed-toc').click(function() {
		$body.removeClass('snippet-runner-visible');
		var className = 'fixed-toc-visible';
		if ($body.hasClass(className)) {
			$body.removeClass(className);
			$("#content").off('click');
		} else {
			$body.addClass(className);
			$("#content").on('click', function() {
				$('.toggle-fixed-toc').click();
			});
		}
	});

	if ($body.hasClass('executable')) {

		$('.highlight').append($('#snippet-actions-template').html());
		$('#snippet-actions-template').remove();
		
		$('.snippet-action-run').click(function() {
			var $t = $(this),
					snippet = $t.parent().siblings('pre:first').text();
			setEditorValue(snippet);
			var className = 'snippet-runner-visible';
			if (!$body.hasClass(className)) { $body.addClass(className); }
			$('.snippet-runner-code-action-run').click();
		});
	}
})();
