xquery version "3.1";
<Document>
    {
let $banksy := collection("/db/banksy/XML")
let $names := $banksy//bibl/title/string()[string-length() gt 0] => distinct-values()
(: 2019-03-04 ebb: There are 34 distinct titles right now in banksy collection.I made sure string-length() was greater than zero to eliminate two blank results.  
 : In your for loop, $n below *is* each title one by one, so you do not need another variable to find it. :)
for $n in $names
let $tree := $banksy/element()
let $titles := $tree//bibl/title[. = $n]
let $description := $tree[descendant::bibl/title[contains(., $n)]]//body/desc/string() ! normalize-space()
let $when := $tree[descendant::bibl/title[contains(., $n)]]//bibl/date/@when/string()
let $lat := $tree[descendant::bibl/title[contains(., $n)]]//bibl/location/@lat/string()
let $lon := $tree[descendant::bibl/title[contains(., $n)]]//bibl/location/@long/string()
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