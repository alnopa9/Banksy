xquery version "3.1";
<Document>
{
let $banksy := collection("/db/banksy/XML")
let $names := $banksy//bibl/title/string()[string-length() gt 0] 
for $n in $names
let $tree := $banksy/element()
let $description := $tree[descendant::bibl/title[. = $n]]//body/desc/string() ! normalize-space()
let $when := $tree[descendant::bibl/title[. = $n]]//bibl/date/@when/string()
let $lat := $tree[descendant::bibl/title[. = $n]]//bibl/location/@lat/string()
let $lon := $tree[descendant::bibl/title[. = $n]]//bibl/location/@long/string()
order by $n 
return
    <Placemark>
        <name>{$n}</name>
        <description>{$description}</description>
        <TimeStamp>
            <when>{$when}</when>
        </TimeStamp>
        <Point>
            <coordinates>{$lon}, {$lat}</coordinates>
        </Point>
    </Placemark>
}
</Document>
