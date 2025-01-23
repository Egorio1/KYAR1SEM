<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Магазин</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th><xsl:value-of select="items/head/title"/></th>
      <th><xsl:value-of select="items/head/byn"/></th>
    </tr>
    <xsl:for-each select="items/item">
      <xsl:sort select="price" data-type="number" order="ascending"/>
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/> BYN</td>
      </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>