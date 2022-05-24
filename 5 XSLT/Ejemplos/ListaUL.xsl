<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
<html>
<head>
<title>Cliente --<xsl:value-of select="//@cliente"/></title>
</head>

<body>
<h1>
<xsl:value-of select="//@codigo"/>
</h1>

<ul>
<li>Nombre --<xsl:value-of select="//nombre/text()"/></li>

<li>Cantidad --<xsl:value-of select="//cantidad/text()"/></li>

<li>Precio --<xsl:value-of select="//precio/text()"/></li>

<li>Observaciones --<xsl:value-of select="//observaciones/text()"/></li>

</ul>


</body>
</html>
  
  </xsl:template>
</xsl:stylesheet>
