<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="descendant::works">
        <works>
            <xsl:if test="descendant::graffiti/title">
                <xsl:for-each select="descendant::graffiti/title">
                    <title class="graffiti"><xsl:apply-templates select="current()/string()"/></title>
                </xsl:for-each>
            </xsl:if>
            <xsl:if test="descendant::canvas/title">
                <xsl:for-each select="descendant::canvas/title">
                    <title class="canvas"><xsl:apply-templates select="current()/string()"/></title>
                </xsl:for-each>
            </xsl:if>
            <xsl:if test="descendant::other/title">
                <xsl:for-each select="descendant::other/title">
                    <title class="misc"><xsl:apply-templates select="current()/string()"/></title>
                </xsl:for-each>
            </xsl:if>
        </works>
    </xsl:template>
</xsl:stylesheet>