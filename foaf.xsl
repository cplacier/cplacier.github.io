<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Bonjour</h2>
        <ol>
          <xsl:apply-templates select="/rdf:RDF/Personne" />
        </ol>
        <li>
          Name <xsl:value-of select="name"/>
          Age <xsl:value-of select="givenname"/>
          Title <xsl:value-of select="title"/>
        </li>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>