<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:template match="/">
        <svg id="timeline-container" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%">
            <desc>Bar Graph of Works by Year</desc>
            <g transform="translate(30, 30)">
                <g class="axis">
                    <line class="y-axis" x1="0" y1="0" x2="0" y2="{descendant::work/medium => count() * 2}" stroke="grey" stroke-width="1"/>
                    <line class="x-axis" x1="0" y1="0" x2="{descendant::work/title => count() * 4}" y2="0"/>
                </g>
                <xsl:apply-templates select="descendant::work/child::title"/>
            </g>
        </svg>
    </xsl:template>
    <xsl:template match="descendant::work/child::title">
        <g class="hashmarks">
            <line class="x-axis" x1="{(current() => count() * 2) + 10}" y1="0" x2="{(current() => count() * 2) - 10}" y2="0"/>
            <line class="y-axis" x1="0" y1="{(following-sibling::medium => count() * 2) + 10}" x2="0" y2="{(following-sibling::medium => count() * 2) - 10}"/>
        </g>
    </xsl:template>
    
</xsl:stylesheet>