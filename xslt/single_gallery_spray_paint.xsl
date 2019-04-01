<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"  xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <link rel="stylesheet" href="../../css/header.css"/>
                <link rel="icon" href="../../img/background/SSI/icon.png"/>
                <title>Banksy | <xsl:apply-templates select="descendant::sourceDesc//title"/></title>
            </head>
            <body>
                <xsl:comment> SSI line below </xsl:comment>
                <xsl:comment>#include virtual="../../ssi/topGallery.html" </xsl:comment>
                <xsl:comment> SSI line below </xsl:comment>
                <xsl:comment>#include virtual="../../ssi/sideGallery.html" </xsl:comment>
                <div class="body-container">
                    <div class="vertical-flow">
                        <xsl:comment> SSI line below </xsl:comment>
                        <xsl:comment>#include virtual="../../ssi/works_ssi_gallery.html" </xsl:comment>
                        <div class="single-work">
                            <div class="gallery-page-img" id="portrait">
                                <xsl:text>&#10;</xsl:text>
                                <xsl:if test="descendant::sourceDesc//medium[@type='spray_paint']">
                                    <img src="../../img/graffiti/{descendant::body//img[1]/@src/string() ! tokenize(., '/')[last()]}" alt="{descendant::body//img/@alt/string()}"/>
                                </xsl:if>
                                <xsl:if test="descendant::sourceDesc//medium[@type='canvas']">
                                    <img src="../../img/paintings/{descendant::body//img[1]/@src/string() ! tokenize(., '/')[last()]}" alt="{descendant::body//img[1]/@alt/string()}"/>
                                </xsl:if>
                                <xsl:text>&#10;</xsl:text>
                                <a href="{descendant::sourceDesc//ref[last()]/@target/string()}">Credit</a>
                            </div>
                            <div class="gallery-page-desc">
                                <xsl:if test="descendant::body/desc[text()]">
                                    <xsl:text>&#10;</xsl:text>
                                    <span class="desc">
                                        <xsl:apply-templates select="descendant::body//desc/string()"/>
                                    </span>
                                </xsl:if>
                                <xsl:text>&#10;</xsl:text>
                                <span class="date">
                                    <xsl:apply-templates select="descendant::sourceDesc//date/@when/string()"/>
                                </span>
                                <xsl:text>&#10;</xsl:text>
                                <span class="medium"><xsl:apply-templates select="descendant::sourceDesc//medium/@type/string()"></xsl:apply-templates></span>
                                <xsl:if test="descendant::sourceDesc[descendant::location]">
                                    <xsl:text>&#10;</xsl:text>
                                    <span class="location">
                                        <xsl:apply-templates select="descendant::sourceDesc//location/string()"/>
                                    </span>
                                </xsl:if>
                            </div>
                        </div>
                    </div>
                </div>
                <xsl:comment> SSI line below </xsl:comment>
                <xsl:comment>#include virtual="../../ssi/license.html" </xsl:comment>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>