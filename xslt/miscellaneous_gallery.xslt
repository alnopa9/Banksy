<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <xsl:variable name="XML_Coll" as="document-node()+" select="collection('../XML/xml/miscellaneous/?select=*.xml')"/>
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <link rel="stylesheet" href="../../../css/header.css"/>
                <link rel="icon" href="../../../img/background/SSI/icon.png"/>
                <script src="../javascript/paintings_array.js">/**/</script>
                <title>Banksy | Prints</title>
            </head>
            <body>
                <xsl:comment> SSI line below </xsl:comment>
                <xsl:comment>#include virtual="../ssi/top.html" </xsl:comment>
                <div class="main">
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="../ssi/side.html" </xsl:comment>
                    <div class="body-container" id="vertical">
                        <xsl:comment> SSI line below </xsl:comment>
                        <xsl:comment>#include virtual="../ssi/works_ssi.html" </xsl:comment>
                        <div class="gallery">
                            <div class="gallery-column">
                                <xsl:for-each select="$XML_Coll[position() mod 3 = 1]">
                                    <xsl:apply-templates select="descendant::bibl/title" mode="column1"/>
                                </xsl:for-each>
                            </div>
                            <div class="gallery-column">
                                <xsl:for-each select="$XML_Coll[position() mod 3 = 2]">
                                    <xsl:apply-templates select="descendant::bibl/title" mode="column2"/>
                                </xsl:for-each>
                            </div>
                            <div class="gallery-column">
                                <xsl:for-each select="$XML_Coll[position() mod 3 = 0]">
                                    <xsl:apply-templates select="descendant::bibl/title" mode="column3"/>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </div>
                <xsl:comment> SSI line below </xsl:comment>
                <xsl:comment>#include virtual="../ssi/license.html" </xsl:comment>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="descendant::title" mode="column1">
        <div class="gallery-hover">
            <a href="gallery_pages/miscellaneous/{. ! tokenize(., ' ') => string-join('_') => lower-case()}.html" target="_blank">
                <xsl:choose>
                    <xsl:when test="following::body//img[parent::p] => count() gt 1">
                        <img src="../img/miscellaneous/{following::body//img[1]/@src}" id="{. ! tokenize(., ' ') => string-join('_') => lower-case()}_rotator" alt="Banksy's '{current()/string()}'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <img src="../img/miscellaneous/{following::body//img[1]/@src}" alt="Banksy's '{current()/string()}'"/>
                    </xsl:otherwise>
                </xsl:choose>
                <div class="gallery-overlay">
                    <div class="gallery-text"><xsl:apply-templates select="string()"/></div>
                </div>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="descendant::title" mode="column2">
        <div class="gallery-hover">
            <a href="gallery_pages/miscellaneous/{translate(. ! tokenize(., ' ') => string-join('_') => lower-case(), '	&#8217;', '')}.html" target="_blank">
                <xsl:choose>
                    <xsl:when test="following::body//img[parent::p] => count() gt 1">
                        <img src="../img/miscellaneous/{following::body//img[1]/@src}" id="{. ! tokenize(., ' ') => string-join('_') => lower-case()}_rotator" alt="Banksy's '{current()/string()}'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <img src="../img/miscellaneous/{following::body//img[1]/@src}" alt="Banksy's '{current()/string()}'"/>
                    </xsl:otherwise>
                </xsl:choose>
                <div class="gallery-overlay">
                    <div class="gallery-text"><xsl:apply-templates select="string()"/></div>
                </div>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="descendant::title" mode="column3">
        <div class="gallery-hover">
            <a href="gallery_pages/miscellaneous/{. ! tokenize(., ' ') => string-join('_') => lower-case()}.html" target="_blank">
                <xsl:choose>
                    <xsl:when test="following::body//img[parent::p] => count() gt 1">
                        <img src="../img/miscellaneous/{following::body//img[1]/@src}" id="{. ! tokenize(., ' ') => string-join('_') => lower-case()}_rotator" alt="Banksy's '{current()/string()}'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <img src="../img/miscellaneous/{following::body//img[1]/@src}" alt="Banksy's '{current()/string()}'"/>
                    </xsl:otherwise>
                </xsl:choose>
                <div class="gallery-overlay">
                    <div class="gallery-text"><xsl:apply-templates select="string()"/></div>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>