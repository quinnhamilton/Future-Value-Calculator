<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String investment = request.getParameter("investment");
		String years = request.getParameter("years");
		String interest = request.getParameter("interest");
		double investmentValue = Double.parseDouble(investment);
		double yearsValue = Double.parseDouble(years);
		double interestValue = Double.parseDouble(interest);
		double futureValue = investmentValue * Math.pow((1 + (interestValue / 100)), (yearsValue));
		double fv = Math.round(futureValue * 100.00) / 100.00;

		out.print("<h1>Future Value Calculation:</h1><br>");
		out.print("The future value of your investment amount is: $" + fv);
		
		//response.sendRedirect("/displayResults.jsp");
	%>

</body>
</html>