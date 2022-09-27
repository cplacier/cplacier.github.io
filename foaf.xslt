<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Homepage</h2>
        <ol>
          <xsl:apply-templates select="/rdf:RDF/Personne" />
        </ol>
        <p>Name <xsl:value-of select="/foaf:Person/foaf:name"/></p>
        <p>Given name <xsl:value-of select="/RDF/foaf:Persone/foaf:givenname"/></p>
        <p>Title <xsl:value-of select="/rdf:RDF/foaf:Personne/foaf:title"/></p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>