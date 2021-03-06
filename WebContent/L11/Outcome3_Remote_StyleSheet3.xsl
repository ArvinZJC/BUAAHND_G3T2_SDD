<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	<body>
		<h1 class="text-center">Activity Badges</h1>
    	<table class="table">
    		<thead>
    			<tr class="thead-dark">
  					<th scope="col">Name</th>
  					<th scope="col">Description</th>
  					<th scope="col">Beaver</th>
  					<th scope="col">Cub</th>
  					<th scope="col">Scout</th>
  				</tr>
    		</thead>
 			<tbody>
 				<xsl:for-each select="badges/badge[@type = 'activity']">
  				<xsl:sort select="name"></xsl:sort>
  					<xsl:choose>
  						<xsl:when test="levels/availability[@level = 'beaver'] = 'Available' and levels/availability[@level = 'cub'] = 'Available' and levels/availability[@level = 'scout'] = 'Available'">
  							<tr>
   								<td><xsl:value-of select="name"></xsl:value-of></td>
   								<td><xsl:value-of select="description"></xsl:value-of></td>
   								<td><xsl:value-of select="levels/availability[@level = 'beaver']"></xsl:value-of></td>
   								<td><xsl:value-of select="levels/availability[@level = 'cub']"></xsl:value-of></td>
   								<td><xsl:value-of select="levels/availability[@level = 'scout']"></xsl:value-of></td>
   							</tr>
  						</xsl:when>
  						<xsl:otherwise></xsl:otherwise>
  					</xsl:choose>
   				</xsl:for-each>
 			</tbody>
		</table>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>