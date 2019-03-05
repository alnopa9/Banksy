xquery version "3.1";
(: collection('/db/banksy')//medium[not(@type="spray_paint")]/base-uri() :)
(: collection('/db/banksy')//date/@when[matches(., "[A-Z]")]/base-uri() :)
let $banksy := collection('/db/banksy')
let $medium := $banksy//medium[not(@type="spray_paint")]/base-uri() => sort()
let $when := $banksy//date/@when[matches(., "[A-Z]")]/base-uri() => sort()
return $when