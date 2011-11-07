$(document).ready(function(){
	/* after the page has finished loading */

	$('#contact-form').jqTransform();
	/* transform the form using the jqtransform plugin */

	$("button").click(function(){

		$(".formError").hide();
		/* hide all the error tooltips */
	});

	var use_ajax=true;
	$.validationEngine.settings={};
	/* initialize the settings object for the formValidation plugin */

	$("#contact-form").validationEngine({	/* create the form validation */
		inlineValidation: false,
		promptPosition: "centerRight",
		success :  function(){use_ajax=true},	/* if everything is OK enable AJAX */
		failure : function(){use_ajax=false}	/* in case of validation failure disable AJAX */
	 })

	$("#contact-form").submit(function(e){

			if(!$('#subject').val().length)
			{
				$.validationEngine.buildPrompt(".jqTransformSelectWrapper","* This field is required","error")
				/* a custom validation tooltip, using the buildPrompt method */

				return false;
			}

			if(use_ajax)
			{
				$('#loading').css('visibility','visible');
				/* show the rotating gif */

				$.post('submit.php',$(this).serialize()+'&ajax=1',
				/* using jQuery's post method to send data */

				function(data){
					if(parseInt(data)==-1)
						$.validationEngine.buildPrompt("#captcha","* Wrong verification number!","error");
						/* if there is an error, build a custom error tooltip for the captcha */
					else
					{
						$("#contact-form").hide('slow').after('<h1>Thank you!</h1>');
						/* show the confirmation message */
					}

					$('#loading').css('visibility','hidden');
					/* hide the rotating gif */
				});
			}

e.preventDefault();	/* stop the default form submit */
})

});