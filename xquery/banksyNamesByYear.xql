xquery version "3.1";
let $banksy := collection('/db/banksy')/element()
let $years := $banksy//date/@when
let $yearsDist := $years ! tokenize(., "-")[1] => sort() => distinct-values()
for $y in $yearsDist
let $names := $banksy//bibl/title
let $namesMatch := $names[following-sibling::date/@when[contains(., $y)]]/string() => sort()
return concat($y, ": ", $namesMatch => string-join("; "))






