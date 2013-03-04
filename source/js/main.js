(function() {
  var opts = {
    lines: 17, // The number of lines to draw
    length: 12, // The length of each line
    width: 4, // The line thickness
    radius: 40, // The radius of the inner circle
    corners: 1, // Corner roundness (0..1)
    rotate: 0, // The rotation offset
    color: '#888', // #rgb or #rrggbb
    speed: 1, // Rounds per second
    trail: 60, // Afterglow percentage
    shadow: true, // Whether to render a shadow
    hwaccel: false, // Whether to use hardware acceleration
    className: 'spinner', // The CSS class to assign to the spinner
    zIndex: 2e9, // The z-index (defaults to 2000000000)
    top: '50px', // Top position relative to parent in px
    left: 'auto' // Left position relative to parent in px
  }, spinner = new Spinner(opts),
  spinnerEl = document.getElementById('snippet-runner-running-indicator');

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
      evalURL = 'http://mengenal-ruby-eval.herokuapp.com',
      // evalURL = 'http://localhost:4000',
      snippetRequestError = $('#snippet-request-error-template').text(),
			$runner = $('#snippet-runner');
	$('#snippet-request-error-template').remove();
	
	$('.snippet-runner-code-action-run').click(function() {
		var $outputTarget = $runner.find('.snippet-runner-output'),
				snippet = getEditorValue();
    spinner.spin(spinnerEl);

		$.post(evalURL, { snippet: snippet }, function(data, textStatus, xhr) {
      spinner.stop(spinnerEl);
			$outputTarget.text(data);
		}).fail(function() {
      spinner.stop(spinnerEl);
			$outputTarget.text(snippetRequestError);
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

    var tombolJalankan = $('#snippet-actions-template').html();
		$('.highlight').append(tombolJalankan).prepend(tombolJalankan);
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
