<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">

    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:variable name="banksyInputColl" as="document-node()+" select="collection('../xml/xml/?select=*.xml')"/>
    <xsl:template match="/">
        <xsl:for-each select="$banksyInputColl//root">
            <xsl:variable name="filename">
                <xsl:value-of select="tokenize(base-uri(), '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../xml/xml_from_xslt/{$filename}">
                <root>
                    <xsl:apply-templates/>
                </root>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="body//img">
        <img src='{lower-case(preceding::title/replace(., "[&#39;]|[&#44;]", "") ! tokenize(., " ") => string-join("_"))}' alt="Banksy's '{preceding::title}'"/>
    </xsl:template>

</xsl:stylesheet>