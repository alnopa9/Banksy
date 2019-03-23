let $banksy := collection("../xml/xml/?select=*.xml")
let $titles := $banksy//bibl/title
let $countries := $titles/following-sibling::location/string()
let $countriesToken := $countries ! tokenize(., ", ")[last()]
let $countriesDist := $countriesToken => distinct-values()
let $titlesUSA := $banksy//bibl/title[following-sibling::location[contains(., "USA")]]
let $titlesUK := $banksy//bibl/title[following-sibling::location[contains(., "UK")]]
let $titlesIS := $banksy//bibl/title[following-sibling::location[contains(., "IS")]]
let $titlesCA := $banksy//bibl/title[following-sibling::location[contains(., "CA")]]
let $titlesPS := $banksy//bibl/title[following-sibling::location[contains(., "PS")]]
let $titlesAU := $banksy//bibl/title[following-sibling::location[contains(., "AU")]]
let $titlesFR := $banksy//bibl/title[following-sibling::location[contains(., "FR")]]
return concat("&#10; USA", "&#10; &#x9;", $titlesUSA => string-join("&#10; &#x9;"), "&#10;",
              "UK", "&#10; &#x9;", $titlesUK => string-join("&#10; &#x9;"), "&#10;",
              "IS", "&#10; &#x9;", $titlesIS => string-join("&#10; &#x9;"), "&#10;",
              "CA", "&#10; &#x9;", $titlesCA => string-join("&#10; &#x9;"), "&#10;",
              "PS", "&#10; &#x9;", $titlesPS => string-join("&#10; &#x9;"), "&#10;",
              "AU", "&#10; &#x9;", $titlesAU => string-join("&#10; &#x9;"), "&#10;",
              "FR", "&#10; &#x9;", $titlesFR => string-join("&#10; &#x9;"))