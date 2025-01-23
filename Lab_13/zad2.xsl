<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Аттестация</h2>
  <table border="1" style="text-align:center;">
    <tr bgcolor="#ff928a">
      <th>Фамилия</th>
      <th>ОПИ</th>
      <th>КЯР</th>
      <th>ОАИП</th>
    </tr>
    <xsl:for-each select="students/student">
      <tr>
        <td><xsl:value-of select="surname"/></td>
    
          <xsl:choose>
            <xsl:when test="opi &lt; 4">
              <td bgcolor="red"><xsl:value-of select="opi"/></td>
            </xsl:when>
            <xsl:when test="opi &gt; 8">
              <td bgcolor="green"><xsl:value-of select="opi"/></td>
            </xsl:when>
            <xsl:otherwise>
              <td><xsl:value-of select="opi"/></td>
            </xsl:otherwise>
          </xsl:choose>

          <xsl:choose>
            <xsl:when test="kyar &lt; 4">
              <td bgcolor="red"><xsl:value-of select="kyar"/></td>
            </xsl:when>
            <xsl:when test="kyar &gt; 8">
              <td bgcolor="green"><xsl:value-of select="kyar"/></td>
            </xsl:when>
            <xsl:otherwise>
              <td><xsl:value-of select="kyar"/></td>
            </xsl:otherwise>
          </xsl:choose>

          <xsl:choose>
            <xsl:when test="oaip &lt; 4">
              <td bgcolor="red"><xsl:value-of select="oaip"/></td>
            </xsl:when>
            <xsl:when test="oaip &gt; 8">
              <td bgcolor="green"><xsl:value-of select="oaip"/></td>
            </xsl:when>
            <xsl:otherwise>
              <td><xsl:value-of select="oaip"/></td>
            </xsl:otherwise>
          </xsl:choose>

      </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>