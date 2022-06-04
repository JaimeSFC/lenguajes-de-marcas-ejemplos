<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
  
<!--       realizar una transformación XSLT que muestre una tabla en un documento HTML5
      donde aparecen como columnas con todos los datos de todos los ordenadores
       con un coste superior a 1000, ordenados por fecha de alta descendente. 
      Marcar con distintos colores las distintas plantas. -->
      <head>
        <title>tabla en un documento HTML5</title>

        <style>
          tr {
            color: black;
          }
        </style>

      </head>

      <body>
        <h2 style="color:blue;">Ordenadores con coste superior a 1000</h2>


        <table border="1">
          <tr bgcolor="#9acd32" style="text-align:center;">
            <th>n_serie</th>
            <th>cpu</th>
            <th>memoriaRAM</th>
            <th>cod_ubicacion</th>
            <th>nombre</th>
            <th>planta</th>        
            <th>precio 🛒</th>
            <th>fecha de alta</th>
          </tr>

          <xsl:for-each select="//ordenador[precio>1000]">
          <xsl:sort select="//ordenador/fecha_alta"/>
          <tr style="text-align:center;">
            <td><xsl:value-of select="n_serie"/></td>
            <td><xsl:value-of select="cpu"/></td>
            <td><xsl:value-of select="memoriaRAM"/></td>
            <td><xsl:value-of select="//cod_ubicacion"/></td>
            <td><xsl:value-of select="//nombre"/></td>
            <td><xsl:value-of select="ubicacion/planta"/></td>
            <td><xsl:value-of select="precio"/></td>
            <td><xsl:value-of select="fecha_alta"/></td>

            <xsl:choose>
          <xsl:when test="primera">
            <td bgcolor="#ff00ff">
            <xsl:value-of select="planta"/></td>
          </xsl:when>
          <xsl:when test="segunda">
            <td bgcolor="#cccccc">
            <xsl:value-of select="planta"/></td>
          </xsl:when>
          <xsl:otherwise>
            <td><xsl:value-of select="planta"/></td>
          </xsl:otherwise>
        </xsl:choose>


          </tr>
          </xsl:for-each>
        </table>



      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>