<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:include href="include.xsl"/>
        <xsl:param name="vName"/>
	
	<xsl:template match="*">
		<xsl:apply-templates select="positions"/>
	</xsl:template>

        <xsl:template match="positions">
            <xsl:if test="name=$vName">
                <xsl:apply-templates select="list/champions"/>
            </xsl:if>
        </xsl:template>

	<xsl:template match="champions">
		        
		<xsl:for-each select="champion">
		      <xsl:element name="a">
                          <xsl:attribute name="href">ChampionServlet?name=<xsl:value-of select="name"/></xsl:attribute>
                          <xsl:value-of select="name"/>
                      </xsl:element>
                      <br/>
		</xsl:for-each>
		
	</xsl:template>
	
</xsl:transform>