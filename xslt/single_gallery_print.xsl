<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"  xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:variable name="banksyInputColl" as="document-node()+" select="collection('../xml/xml/paintings/?select=*.xml')"/>
    <xsl:template match="/">
        <xsl:for-each select="$banksyInputColl//root">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.html') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../site/html/xslt_gallery_pages/Prints/{$filename}">
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
                                        <img src="../../../img/paintings/{(descendant::body//img/@src)[1]}" alt="{(descendant::body//img/@alt/string())[1]}"/>
                                        <xsl:text>&#10;</xsl:text>
                                        <a href="{descendant::sourceDesc//ref[last()]/@target/string()}">Credit</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="descendant::sourceDesc//size[@orientation='landscape']">
                                    <div class="gallery-page-img" id="landscape">
                                        <xsl:text>&#10;</xsl:text>
                                        <img src="../../../img/paintings/{(descendant::body//img/@src)[1]}" alt="{(descendant::body//img/@alt/string())[1]}"/>
                                        <xsl:text>&#10;</xsl:text>
                                        <a href="{descendant::sourceDesc//ref[last()]/@target/string()}">Credit</a>
                                    </div>
                                </xsl:if>
                                <div class="gallery-page-desc">
                                    <div class="desc">Description</div>
                                    <xsl:text>&#10;</xsl:text>
                                    <div class="date"><xsl:apply-templates select="descendant::sourceDesc//date/@when/string()"/></div>
                                    <xsl:text>&#10;</xsl:text>
                                    <div class="medium">Prints</div>
                                    <xsl:text>&#10;</xsl:text>
                                    <div class="editions">
                                        <div class="thumbnail">
                                            <xsl:if test="descendant::edition => count() = 0">
                                                <p>Editions: Original</p>
                                            </xsl:if>
                                            <xsl:if test="descendant::edition => count() = 1">
                                                <p>Editions: <xsl:apply-templates select="descendant::bibl/edition/string()"/></p>
                                            </xsl:if>
                                            <xsl:if test="descendant::edition => count() gt 1">
                                                <div class="thumbnail-column">
                                                    <xsl:if test="descendant::body/child::p[img]/img[position() mod 3 = 1]">
                                                        <xsl:apply-templates select="descendant::img[parent::p][position() mod 3 = 1]"  mode="column1"/>
                                                    </xsl:if>
                                                    <br/>
                                                </div>
                                                <div class="thumbnail-column">
                                                    <xsl:if test="descendant::body/child::p[img]/img[position() mod 3 = 2]">
                                                        <xsl:apply-templates select="descendant::img[parent::p][position() mod 3 = 2]"  mode="column2"/>
                                                    </xsl:if>
                                                    <br/>
                                                </div>
                                                <div class="thumbnail-column">
                                                    <xsl:if test="descendant::body/child::p[img]/img[position() mod 3 = 0]">
                                                        <xsl:apply-templates select="descendant::img[parent::p][position() mod 3 = 0]"  mode="column3"/>
                                                    </xsl:if>
                                                    <br/>
                                                </div>
                                            </xsl:if>
                                        </div>
                                    </div>
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
    <xsl:template match="descendant::img[parent::p][position() mod 3 = 1]" mode="column1">
        <div class="thumbnail-hover">
            <img src="../../../img/paintings/{@src/string()}" alt="{current()/@alt/string()}"/>
            <p>'<xsl:apply-templates select="translate(attribute::alt/substring-after(., '('), ')', '')"/></p>
        </div>
    </xsl:template>
    <xsl:template match="descendant::img[parent::p][position() mod 3 = 2]" mode="column2">
        <div class="thumbnail-hover">
            <img src="../../../img/paintings/{@src/string()}" alt="{current()/@alt/string()}"/>
            <p>'<xsl:apply-templates select="translate(attribute::alt/substring-after(., '('), ')', '')"/></p>
        </div>
    </xsl:template>
    <xsl:template match="descendant::img[parent::p][position() mod 3 = 0]" mode="column3">
        <div class="thumbnail-hover">
            <img src="../../../img/paintings/{@src/string()}" alt="{current()/@alt/string()}"/>
            <p>'<xsl:apply-templates select="translate(attribute::alt/substring-after(., '('), ')', '')"/></p>
        </div>
    </xsl:template>
</xsl:stylesheet>