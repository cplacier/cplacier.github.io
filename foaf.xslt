<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="rdf:RDF/foaf:Person">
    <html>
      <body>
        <h2>Homepage</h2>
        <p>Name <xsl:value-of select="foaf:name"/></p>
        <p>Given name <xsl:value-of select="foaf:givenname"/></p>
        <p>Title <xsl:value-of select="foaf:title"/></p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>