xquery version "3.1";
(: source title  @ medium = spray-paint:)
(: target country  @ state/province :)
(: interaction :)
declare variable $ThisFileContent :=
string-join(
    let $banksy := collection("/db/banksy/XML")/element()[descendant::location]
    let $titles := $banksy//sourceDesc//title
        for $t in $titles
        let $location := $banksy//sourceDesc[descendant::title = $t]//location
        let $places := $location ! tokenize(., ", ")[1]
        let $countries := $location ! tokenize(., ", ")[2]
        let $medium := $banksy//sourceDesc[descendant::title = $t]//medium/@type/string()
        let $years := $banksy//sourceDesc[descendant::title = $t]//date/@when/string() ! tokenize(., "-")[1]
            for $y in $years
            let $otherTitles := $banksy//sourceDesc//title[following-sibling::date/@when = $y] => count() + 1
                for $o in $otherTitles
                for $m in $medium
                for $p in $places
                for $c in $countries
    order by $y ascending
    return concat($t, "&#x9;", $m, "&#x9;", $p, "&#x9;", $c, "&#x9;", $y, "&#x9;", $o), "&#10;");
let $filename := "banksyCountriesNetwork.tsv"
let $doc-db-uri := xmldb:store("/db/banksy/XQuery", $filename, $ThisFileContent, "text/plain")
return $doc-db-uri