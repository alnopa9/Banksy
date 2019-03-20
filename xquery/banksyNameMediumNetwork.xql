xquery version "3.1";
declare variable $ThisFileContent :=
string-join(
    let $banksy := collection("/db/banksy/XML")
    let $titles := $banksy//sourceDesc//title => distinct-values() => sort()
        for $t in $titles
        let $medium := $banksy//sourceDesc[descendant::title = $t]//medium/@type/string()
            for $m in $medium
            let $edition := $banksy//sourceDesc[descendant::title = $t]//edition => count() + 1
            for $e in $edition
    return concat($t, "&#x9;", $m, "&#x9;", $e), "&#10;");
let $filename := "banksyNameMediumNetwork.tsv"
let $doc-db-uri := xmldb:store("/db/banksy/XQuery", $filename, $ThisFileContent, "text/plain")
return $doc-db-uri
