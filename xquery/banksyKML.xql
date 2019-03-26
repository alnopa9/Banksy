xquery version "3.1";
<Document>
{
let $banksy := collection("../xml/xml/?select=*.xml")//element()[descendant::location]
let $names := $banksy//bibl/title/string()[string-length() gt 0] 
for $n in $names
let $description := $banksy[descendant::bibl/title[string() = $n]]//body/desc/string() ! normalize-space()
let $when := $banksy[descendant::bibl/title[string() = $n]]//bibl/date/@when/string()
let $lat := $banksy[descendant::bibl/title[string() = $n]]//bibl/location/@lat/string()
let $lon := $banksy[descendant::bibl/title[string() = $n]]//bibl/location/@long/string()
let $img := $banksy[descendant::bibl/title[string() = $n]]//body//img/@src/string()
let $credit := $banksy[descendant::bibl/title[string() = $n]]//bibl//ref/@target/string()
order by $n 
return
    <Placemark>
        <name>{$n}</name>
        <description>
            {$description}
            <br/>
            <a href='{$credit}'>CREDIT</a>
        </description>
        <TimeStamp>
            <when>{$when}</when>
        </TimeStamp>
        <Point>
            <coordinates>{$lon}, {$lat}</coordinates>
        </Point>
    </Placemark>
}
</Document>
