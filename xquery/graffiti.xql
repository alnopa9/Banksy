xquery version "3.1";
<Document>
{
let $banksy := collection("../xml/xml/graffiti/?select=*.xml")//element()[descendant::bibl/medium[@type="spray_paint"]]
let $years := $banksy//date/@when
let $yearsDist := $years ! tokenize(., "-")[1] => sort() => distinct-values()
for $y in $yearsDist
let $names := $banksy//bibl/title
let $namesMatch := $names[following-sibling::date/@when[contains(., $y)]]/string() => sort()
for $n in $names
let $orientation := 
}
</Document>
