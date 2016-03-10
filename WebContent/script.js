/**
 * Purpose: Form validation for the Future Value Calculator
 */
$(document).ready(function() {
	$("#submitbutton").on("click", function(event) {
		var $investment = $("#investment");
		var $years = $("#years");
		var $interest = $("#interest");
		var fields = [ $investment, $years, $interest ];

		fields.forEach(function(field) {
			if (!field.val()) {
				field.prev().css("color", "red");
			}
		});

		event.preventDefault();
	});
});
