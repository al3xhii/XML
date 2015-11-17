<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:include href="include.xsl"/>
	
	<xsl:template match="*">
	        
		<table>
		   <tr><td>Position / Role</td></tr>
		   <xsl:apply-templates select="positions"/>	
		</table>
				
	</xsl:template>
	
	<xsl:template match="positions">
		<tr><td><xsl:element name="a">
		          <xsl:attribute name="href">ChampionsServlet?name=<xsl:value-of select="name"/></xsl:attribute>
		          <xsl:value-of select="name"/>
		        </xsl:element>
		     </td>
		     <td>
		         <xsl:value-of select="lane"/>
		     </td>
		</tr>
	</xsl:template>
	
</xsl:transform>