<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns="http://www.w3.org/2000/svg"
    exclude-result-prefixes="xs"
    version="3.0">

    <xsl:template match="/">
        <xsl:text>&#10;</xsl:text>
        <svg id="timeline-container" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%">
            <xsl:text>&#10;</xsl:text>
            <desc>Banksy Works Timeline</desc>
            <xsl:text>&#10;</xsl:text>
            <g transform="translate(120)">
                <xsl:text>&#10;&#9;</xsl:text>
                <line x1="0" y1="30" x2="0" y2="{(descendant::year => count() + descendant::title => count()) * 25 + 5}" stroke="gray" stroke-width="1"/>
                <xsl:apply-templates select="descendant::group/child::year"/>
                <xsl:text>&#10;</xsl:text>
            </g>
            <xsl:text>&#10;</xsl:text>
        </svg>
    </xsl:template>
    <xsl:template match="descendant::group/child::year">
        <xsl:text>&#10;&#9;</xsl:text>
        <g class="year">
            <xsl:text>&#10;&#9;&#9;</xsl:text>
            <text x="-45" y="{(current() => count() * (preceding::year => count() + preceding::title => count()) + 1) * 25 + 5}" fill="black">
                <xsl:apply-templates select="current()/text()"/>
            </text>
            <xsl:text>&#10;&#9;&#9;</xsl:text>
            <circle r="3" cx="0" cy="{(current() => count() * (preceding::year => count() + preceding::title => count()) + 1) * 25}" fill="red"/>
            <xsl:text>&#10;&#9;&#9;</xsl:text>
            <g class="works">
                <xsl:apply-templates select="following-sibling::works/child::title"/>
                <xsl:text>&#10;&#9;&#9;</xsl:text>
            </g>
            <xsl:text>&#10;&#9;</xsl:text>
        </g>
    </xsl:template>
    <xsl:template match="works//title">
        <xsl:text>&#10;&#9;&#9;&#9;</xsl:text> 
        <a xlink:href='gallery_pages/{lower-case(current()/replace(., "[&#39;]|[&#44;]", "") ! translate(., "-", "_") ! tokenize(., " ") => string-join("_"))}.html' xlink:title="Banksy's '{current()}'" target="_blank">
            <xsl:text>&#10;&#9;&#9;&#9;&#9;</xsl:text>
        <text x="10" y="{(current() => count() * (preceding::year => count() + preceding::title => count()) + 1) * 25 + 5}">
            <xsl:apply-templates select="current()/string()"/>
        </text>
        <xsl:text>&#10;&#9;&#9;&#9;</xsl:text>
        </a>
    </xsl:template>
</xsl:stylesheet>