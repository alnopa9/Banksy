let $banksy := collection("../site/html/xslt_gallery_pages/?select=*.xml")
let $pages := $banksy/descendant::body//div[@class='gallery-page-img']/img/@src
return $pages




