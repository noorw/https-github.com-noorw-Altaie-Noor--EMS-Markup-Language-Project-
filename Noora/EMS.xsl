<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
<xsl:template match="/">
  <html>
  <body>
  <h2>Employee Management System XSLT</h2>
  <h3>Sorted by lastname, employees with salaries greater than 15000 are highlighted by green color, employees with salaries lower are highlighted with red.</h3>
    <table border="1">
      <tr bgcolor="#EAEAEA">
        <th>Last name</th>
        <th>First name</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Working hours</th>
      </tr>
      <xsl:for-each select="system/employee">
        <xsl:sort select="lastName" />
      <tr>
        <td><xsl:value-of select="lastName"/></td>
        <td><xsl:value-of select="firstName"/></td>
        <td><xsl:value-of select="department"/></td>
        <xsl:choose>
            <xsl:when test="salary/amount>15000">
                <td style="background-color:#05FC8C">
                    <xsl:value-of select="salary/amount" />
                </td>
            </xsl:when>
            <xsl:otherwise>
                <td>
                    <xsl:value-of select="salary/amount" />
                </td>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="workingHours>50">
                <td>
                    <xsl:value-of select="workingHours" />
                </td>
            </xsl:when>
            <xsl:otherwise>
                <td style="background-color:#BA4848">
                    <xsl:value-of select="workingHours" />
                </td>
            </xsl:otherwise>
        </xsl:choose>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>