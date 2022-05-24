<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <head>
          <title>Mi musicote</title>
          <h2>Mis cds</h2>
        </head>
        <table border="3">
          <tr bgcolor="#9acd32">
            <th style="text-align:center">Artista</th>
            <th style="text-align:center">Título</th>
          </tr>
          <xsl:for-each select="//cd">
            <tr style="text-align:center">
              <td style="font-family:monospace:font-size:0.5rem;color:hotpink;">
                <xsl:value-of select="titulo"/>
              </td>
              <td style="font-family:verdana;font-size:0.5rem;color:maroon;">
                <xsl:value-of select="artista"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
