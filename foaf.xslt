<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
  xmlns:foaf="http://xmlns.com/foaf/0.1/">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="rdf:RDF/foaf:Person">
    <html>
      <body>
        <h3><xsl:value-of select="foaf:title"/> <xsl:value-of select="foaf:name"/></h3>
        <p>Given name : <xsl:value-of select="foaf:givenname"/></p>
        <p>Family name : <xsl:value-of select="foaf:family_name"/></p>
        <ul>
          <xsl:for-each select="foaf:knows">
            <li><a><xsl:value-of select="rdfs:seeAlso"/></a></li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>