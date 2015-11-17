<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:include href="include.xsl"/>

        <xsl:param name="vChampionName"/>
        <xsl:param name="vNextName"/>
        <xsl:param name="vPrevName"/>
	
	<xsl:template match="*">
		<xsl:apply-templates select="positions/list/champions"/>
	</xsl:template>
	
	<xsl:template match="champions">
		
		<xsl:for-each select="champion">
			<xsl:if test="./name=$vChampionName">


			      <h1><xsl:value-of select="./name"/></h1>
                              <br/>
                              
                              <xsl:element name="img">
				  <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
			      </xsl:element>
                              
			      <br/><br/>
                              <h2>Passive</h2>
			      <xsl:value-of select="./passive"/>
                              
			      <br/><br/>
                              <h2>Abilities</h2>
			      <ul>
				      <xsl:for-each select="./abilities/ability">
					<li><xsl:value-of select="."/></li>
				      </xsl:for-each>
			      </ul>
			      
			      <br/>

                              <hr/>
                              
                              <xsl:element name="a"><xsl:attribute name="href">ChampionServlet?name=<xsl:value-of select="$vPrevName"/></xsl:attribute>Prev</xsl:element> |
                              <xsl:element name="a"><xsl:attribute name="href">ChampionServlet?name=<xsl:value-of select="$vNextName"/></xsl:attribute>Next</xsl:element>
                              
			</xsl:if>
		</xsl:for-each>
		
	</xsl:template>
	
</xsl:transform>