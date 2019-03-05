xquery version "3.1";
<Document>
{
let $banksy := collection("/db/banksy/XML")
let $names := $banksy//bibl/title/string()
for $n in $names
let $tree := $banksy/element()
let $titles := $tree[descendant::bibl/title[contains(., $n)]]//bibl/title/string()
let $description := $tree[descendant::bibl/title[contains(., $n)]]//body/desc/string() ! normalize-space()
let $when := $tree[descendant::bibl/title[contains(., $n)]]//bibl/date/@when/string()
let $lat := $tree[descendant::bibl/title[contains(., $n)]]//bibl/location/@lat/string()
let $lon := $tree[descendant::bibl/title[contains(., $n)]]//bibl/location/@long/string()
return
    <Placemark>
        {
        for $t in $titles
        order by $t ascending
        return
        <name>{$t}</name>
        }
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