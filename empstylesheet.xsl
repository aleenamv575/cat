<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<style>
				h1 {
					text-align:center;
				}
				</style>
			</head>
			<body>
				<h1>Employee Management System</h1>
				<table border="2" align="center">
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>AGE</th>
						<th>SALARY</th>
						<th>EMAIL</th>
						<th>MobNum</th>
						<th>Designation</th>
						<th>Promotion</th>
					</tr>
		
					<xsl:for-each select="Company/Employee">
						<tr>
						<td>
						<xsl:value-of select="Emp-ID"/>
						</td>
						<td>
						<xsl:value-of select="Emp-name"/>
						</td>
						<td>
						<xsl:value-of select="Emp-age"/>
						</td>
						<td>
						<xsl:value-of select="Emp-salary"/>
						</td>
						<td>
						<xsl:value-of select="Emp-emailid"/>
						</td>
						<td>
						<xsl:value-of select="Emp-phonenum"/>
						</td>
						<td>
						<xsl:value-of select="Emp-designation"/>
						</td>
						<td>
						<xsl:choose>
						<xsl:when test="Emp-age &gt; 50">
						Associate Project manager
						</xsl:when>
						<xsl:when test="Emp-age &gt; 40">
						Team Leader 
						</xsl:when>	
						<xsl:when test="Emp-age &lt; 40">
						Developer
						</xsl:when>	
						</xsl:choose>										
						</td>
						</tr>
					</xsl:for-each>
					
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>