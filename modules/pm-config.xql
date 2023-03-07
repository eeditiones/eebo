
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-ebbe-web="http://www.tei-c.org/pm/models/ebbe/web/module" at "../transform/ebbe-web-module.xql";
import module namespace pm-ebbe-print="http://www.tei-c.org/pm/models/ebbe/print/module" at "../transform/ebbe-print-module.xql";
import module namespace pm-ebbe-latex="http://www.tei-c.org/pm/models/ebbe/latex/module" at "../transform/ebbe-latex-module.xql";
import module namespace pm-ebbe-epub="http://www.tei-c.org/pm/models/ebbe/epub/module" at "../transform/ebbe-epub-module.xql";
import module namespace pm-ebbe-fo="http://www.tei-c.org/pm/models/ebbe/fo/module" at "../transform/ebbe-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ebbe.odd" return pm-ebbe-web:transform($xml, $parameters)
    default return pm-ebbe-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ebbe.odd" return pm-ebbe-print:transform($xml, $parameters)
    default return pm-ebbe-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ebbe.odd" return pm-ebbe-latex:transform($xml, $parameters)
    default return pm-ebbe-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ebbe.odd" return pm-ebbe-epub:transform($xml, $parameters)
    default return pm-ebbe-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ebbe.odd" return pm-ebbe-fo:transform($xml, $parameters)
    default return pm-ebbe-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    