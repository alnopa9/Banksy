xquery version "3.1";
declare variable $ThisFileContent :=
string-join(
    let $banksy := collection("/db/banksy/XML")
    let $titles := $banksy//sourceDesc//title/text() => distinct-values() => sort()
    for $t in $titles
        let $years := $banksy//sourceDesc[descendant::title/text() = $t]//date/@when/string() ! tokenize(., "-")[1] => distinct-values()
        let $edition := $banksy//sourceDesc[descendant::title/text() = $t]//edition => count() + 1
        let $medium := $banksy//sourceDesc[descendant::title/text() = $t]//medium/@type/string()
        for $y in $years
        for $m in $medium
        for $e in $edition
    return concat($y, "&#x9;", $m, "&#x9;", $e, "&#x9;", $t), "&#10;");
let $filename := "banksyYearMediumNetwork.tsv"
let $doc-db-uri := xmldb:store("/db/banksy/XQuery", $filename, $ThisFileContent, "text/plain")
return $doc-db-uri
