<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	<body>
		<h1 class="text-center">Members</h1>
    	<table class="table">
    		<thead>
    			<tr class="thead-light">
  					<th scope="col">ID</th>
  					<th scope="col">Name</th>
  					<th scope="col">Address 1</th>
  					<th scope="col">Address 2</th>
  					<th scope="col">Town</th>
  					<th scope="col">Postcode</th>
  					<th scope="col">Gender</th>
  					<th scope="col">DOB</th>
  					<th scope="col">Religion</th>
  					<th scope="col">Date joined</th>
  					<th scope="col">Section</th>
  					<th scope="col">Home number</th>
  					<th scope="col">Mobile</th>
  					<th scope="col">Office phone</th>
  					<th scope="col">Progress badges</th>
  					<th scope="col">Activity badges</th>
  				</tr>
    		</thead>
 			<tbody>
 				<xsl:for-each select="members/member">
  				<xsl:sort select="name"></xsl:sort>
  					<tr>
   						<th scope="row"><xsl:value-of select="@id"></xsl:value-of></th>
   						<td><xsl:value-of select="name"></xsl:value-of></td>
   						<td><xsl:value-of select="address/line1"></xsl:value-of></td>
   						<td><xsl:value-of select="address/line2"></xsl:value-of></td>
   						<td><xsl:value-of select="address/town"></xsl:value-of></td>
   						<td><xsl:value-of select="address/postcode"></xsl:value-of></td>
   						<td><xsl:value-of select="gender"></xsl:value-of></td>
   						<td><xsl:value-of select="dob"></xsl:value-of></td>
   						<td><xsl:value-of select="religion"></xsl:value-of></td>
   						<td><xsl:value-of select="dateJoined"></xsl:value-of></td>
   						<td><xsl:value-of select="section"></xsl:value-of></td>
   						<xsl:for-each select="phoneNumbers/phoneNumber">
   						<xsl:sort select="type"></xsl:sort>
   							<td>
   								<xsl:choose>
   									<xsl:when test="type = 'Home'">
   										<xsl:value-of select="content"></xsl:value-of>
   									</xsl:when>
   									<xsl:when test="type = 'Mobile'">
   										<xsl:value-of select="content"></xsl:value-of>
   									</xsl:when>
   									<xsl:otherwise>
										<xsl:value-of select="content"></xsl:value-of>
   									</xsl:otherwise>
   								</xsl:choose>
   							</td>
   						</xsl:for-each>
   						<td>
   							<xsl:for-each select="progressBadges/progressBadge">
   								<xsl:if test="id > 1">, </xsl:if>
   								<xsl:value-of select="content"></xsl:value-of>
   							</xsl:for-each>
   						</td>
   						<td>
   							<xsl:for-each select="activityBadges/activityBadge">
   								<xsl:if test="id > 1">, </xsl:if>
   								<xsl:value-of select="content"></xsl:value-of>
   							</xsl:for-each>
   						</td>
   					</tr>
   				</xsl:for-each>
 			</tbody>
		</table>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>