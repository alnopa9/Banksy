<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="kmlColl" select="collection('../XML/?select=*.xml')"/>
    
    <xsl:template match="/">
        <kml xmlns="http://www.opengis.net/kml/2.2">
            <Document>
                <xsl:apply-templates select="$kmlColl//bibl"/>
            </Document>
        </kml>
    </xsl:template>
    <xsl:template match="bibl">
        <Placemark>
            <name><xsl:apply-templates select="title"/></name>
            <description><xsl:apply-templates select="//bibl/ancestor::header/following-sibling::body/desc"/></description>
            <TimeStamp>
                <when><xsl:apply-templates select="//bibl/date/@when"/></when>
            </TimeStamp>
            <Point>
                <coordinates><xsl:apply-templates select="//bibl/location/@long"/>, <xsl:apply-templates select="//bibl/location/@lat"/></coordinates>
            </Point>
        </Placemark>
    </xsl:template>
</xsl:stylesheet>