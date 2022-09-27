<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
  xmlns:univ="http://www.computing-services.co.il">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <ol>
          <xsl:apply-templates select="/rdf:RDF/univ:Personne" />
        </ol>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="univ:Personne">
    <li>
      Name <xsl:value-of select="univ:name"/>
      Age <xsl:value-of select="univ:givenname"/>
      Title <xsl:value-of select="univ:title"/>
    </li>
  </xsl:template>
</xsl:stylesheet>