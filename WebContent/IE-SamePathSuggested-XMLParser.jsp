<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>XML Parser</title>
</head>
<body>
	<input type="text" id="text-box-file-name" placeholder="Enter a file name including its file extension" autofocus />
	<button type="button" onclick="validateXml()">OK</button>

	<script type="text/javascript">
		function validateXml(){
			var textBoxFileName = document.getElementById("text-box-file-name");
			if(textBoxFileName != null && textBoxFileName.value != ""){
				var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
				xmlDoc.async="false";
				xmlDoc.validateOnParse="true";
				xmlDoc.load(textBoxFileName.value);
				document.write("<br>Error Code: ");
				document.write(xmlDoc.parseError.errorCode);
				document.write("<br>Error Reason: ");
				document.write(xmlDoc.parseError.reason);
				document.write("<br>Error Line: ");
				document.write(xmlDoc.parseError.line);
			}
		}
	</script>
</body>
</html>