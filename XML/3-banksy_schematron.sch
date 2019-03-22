<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <pattern id="desc">
        <rule context="desc">
            <report test="contains(., 'Bnanksy')">PLEASE try to spell the artist's name correctly, will you????!!!! </report>
        </rule>
    </pattern>
    <pattern id="bibl">
        <rule context="bibl/location[descendant::text()[contains(., 'AU')]]">
            <assert test="number(@lat) lt 0">Latitude must be a negative number</assert>
            <assert test="number(@long) gt 100">Longitude must be greater than 100</assert>
        </rule>
        <rule context="bibl/location[descendant::text()[contains(., 'USA')]]">
            <assert test="number(@lat) gt 0">Latititude must be greater than 0 </assert>
            <assert test="number(@long) lt 0">Longitude must be less than 0</assert>
        </rule>
        <rule context="bibl/medium[@type='spray_paint']">
            <assert test="following-sibling::location">Spray Paint must contain a location element</assert>
        </rule>
        <rule context="bibl/edition[@total]">
            <assert test="@total = @signed + @unsigned">Wrong Total</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="bibl/edition">
            <assert test="@total = @signed+@unsigned">wrong total</assert>
        </rule>
    </pattern>
    
    
</schema>
