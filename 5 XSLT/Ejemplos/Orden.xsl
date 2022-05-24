<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <titlle>Tareas DAM--<xsl:value-of select="//coche[position()=1]"/> </titlle>
      </head>
      <body>
        <section id="orden-alfabetico">
          <h2>Mis carracos A-Z</h2>
          <table border="1">
            <tr bgcolor="#9acd32">
              <th style="text-align:center">Coche (A-Z)</th>
              <th style="text-align:center">Potencia</th>
            </tr>
            <xsl:for-each select="//coche">
              <xsl:sort select="//marca"/>
              <tr style="text-align:center">
                <td style="font-family:monospace;">
                  <xsl:value-of select="modelo"/>
                </td>
                <td style="font-family:monospace;">
                  <xsl:value-of select="potencia"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </section>      
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
