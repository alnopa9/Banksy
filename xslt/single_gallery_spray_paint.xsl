<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"  xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:variable name="banksyInputColl" as="document-node()+" select="collection('../xml/xml/graffiti/?select=*.xml')"/>
    <xsl:template match="/">
        <xsl:for-each select="$banksyInputColl//root">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.html') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../site/html/xslt_gallery_pages/Graffiti/{$filename}">
                <html>
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <link rel="stylesheet" href="../../../css/header.css"/>
                        <link rel="icon" href="../../../img/background/SSI/icon.png"/>
                        <title>Banksy | <xsl:value-of select="descendant::sourceDesc//title"/></title>
                    </head>
                    <body>
                        <xsl:text>&#10;      </xsl:text>
                        <xsl:comment> SSI line below </xsl:comment>
                        <xsl:text>&#10;      </xsl:text>
                        <xsl:comment>#include virtual="../../../ssi/topGallery.html" </xsl:comment>
                        <xsl:text>&#10;</xsl:text>
                        <div class="main">
                        <xsl:text>&#10;         </xsl:text>
                        <xsl:comment> SSI line below </xsl:comment>
                        <xsl:text>&#10;         </xsl:text>
                        <xsl:comment>#include virtual="../../../ssi/sideGallery.html" </xsl:comment>
                        <div class="body-container" id="vertical">
                            <xsl:text>&#10;            </xsl:text>
                            <xsl:comment> SSI line below </xsl:comment>
                            <xsl:text>&#10;            </xsl:text>
                            <xsl:comment>#include virtual="../../../ssi/works_ssi_gallery.html" </xsl:comment>
                            <div class="single-work">
                                <xsl:if test="descendant::sourceDesc//size[@orientation='portrait']">
                                    <div class="gallery-page-img" id="portrait">
                                        <xsl:text>&#10;</xsl:text>
                                        <img src="../../../img/graffiti/{descendant::body//img/@src/lower-case(string()) ! tokenize(., '/')[last()]}" alt="{descendant::body//img/@alt/string()}"/>
                                        <xsl:text>&#10;</xsl:text>
                                        <a href="{descendant::sourceDesc//ref[last()]/@target/string()}">Credit</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="descendant::sourceDesc//size[@orientation='landscape']">
                                    <div class="gallery-page-img" id="landscape">
                                        <xsl:text>&#10;</xsl:text>
                                        <img src="../../../img/graffiti/{descendant::body//img/@src/lower-case(string()) ! tokenize(., '/')[last()]}" alt="{descendant::body//img/@alt/string()}"/>
                                        <xsl:text>&#10;</xsl:text>
                                        <a href="{descendant::sourceDesc//ref[last()]/@target/string()}">Credit</a>
                                    </div>
                                </xsl:if>
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
                                    <span class="medium">Spray Paint</span>
                                    <xsl:text>&#10;</xsl:text>
                                    <span class="location">
                                        <xsl:apply-templates select="descendant::sourceDesc//location/string()"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                        </div>
                        <xsl:comment> SSI line below </xsl:comment>
                        <xsl:comment>#include virtual="../../../ssi/license.html" </xsl:comment>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>