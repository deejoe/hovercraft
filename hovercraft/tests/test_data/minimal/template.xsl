<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">

<xsl:import href="resource:templates/reST.xsl" />

<xsl:template match="/" name="main">
<html>
  <body>
  
    <xsl:for-each select="/document">
      <div id="impress" transition-duration="{@transition-duration}">
        <xsl:for-each select="step">
          <div class="step">
            <xsl:copy-of select="@*"/>
              <xsl:for-each select="section">
                <xsl:apply-templates />
              </xsl:for-each>
          </div>
        </xsl:for-each>
      </div> 
    </xsl:for-each>
  
  <xsl:for-each select="/document/templateinfo/body/js">
      <script type="text/javascript">
        <xsl:copy-of select="@*"/>
      </script>
    </xsl:for-each>
  
</body>
</html>
</xsl:template>

</xsl:stylesheet>
