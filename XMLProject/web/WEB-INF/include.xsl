<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
            <html>
              <head>
            	<title>League of Legends</title>
              </head>
              <body background="bg.jpg">
              	<h1 style="color:yellow">League of Legends Champions</h1>
                
                <hr/>
              	
              	<p style="color:white">On this site you will find champion descriptions in LoL.</p>

                <br/>
                
                <a href="MainServlet">Home</a><br/><hr/>
              	<xsl:apply-templates select="*"/>
              
              </body>
            </html>
	</xsl:template>

</xsl:transform>