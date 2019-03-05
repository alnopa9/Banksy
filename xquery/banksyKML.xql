xquery version "3.1";
<Document>
    {
let $banksy := collection("/db/banksy/XML")
let $names := $banksy//bibl/title/string()[string-length() gt 0] 
(: 2019-03-04 ebb: There are 34 titles with text in them right now in banksy collection.I made sure string-length() was greater than zero to eliminate two blank results.  
 : In your for loop, $n below *is* each title one by one, so you do not need another variable to find it. :)
for $n in $names
let $tree := $banksy/element()
(: ebb: This $titles variable isn't necessary because $n already *is* the title elements taken one by one. :let $titles := $tree//bibl/title[. = $n]  In the following variables I replaced your contains() function with a simpler expression of equality, since we haven't altered $n at all. It's just a sequence of title text nodes from your tree. :)
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