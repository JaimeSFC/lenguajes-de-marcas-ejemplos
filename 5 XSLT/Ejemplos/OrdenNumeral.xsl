﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

<!-- <xsl:sort select="expression"
lang="language-code"
data-type="text|number|qname"
order="ascending|descending"
case-order="upper-first|lower-first"/> -->


    <head>      
       <titlle>Tareas DAM--<xsl:value-of select="//coche[position()=3]"/> </titlle>
    </head>
    <body>
     
<section id="orden-descendiente-por-numero">
        <h2>Mis carracos potentes</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:center">Coche </th>
            <th style="text-align:center">Potencia (+ a -)</th>
          </tr>
          <xsl:for-each select="//coche">
<xsl:sort order="ascending" data-type="number" select="//coche/potencia"/>            
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
  </xsl:template>
</xsl:stylesheet>
