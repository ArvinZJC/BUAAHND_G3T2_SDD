<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>XML DOM Exercise</title>
</head>
<body>
	<p id="book-counter">The number of books: </p>
	<p>Book brief info:</p>
	
	<script type="text/javascript">
		var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
		xmlDoc.async = false;
		xmlDoc.load("L10_1.xml");
		var list = xmlDoc.getElementsByTagName("book");
		document.getElementById("book-counter").innerHTML += list.length;
		for (var i = 0; i < list.length; i++) {
			var books = list[i].childNodes;
			for (var j = 0; j < books.length; j++) {
				document.writeln(list[i].childNodes[j].childNodes[0].nodeValue + "<br />");
			}
			document.writeln("-----------------------------------<br />");
		}
	</script>
</body>
</html>