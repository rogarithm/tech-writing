#lang pollen

◊(require css-tools)

◊(make-media-query 24 10.5 1000 40 .25)
◊(font-face-declaration "cooperhewitt-light" "fonts/woff/CooperHewitt-Light.woff" #:base64 #t)
◊(font-face-declaration "sourcecodepro-light" "fonts/woff/SourceCodePro-Light.otf.woff" #:base64 #t)
◊(font-face-declaration "cooperhewitt-lightitalic" "fonts/woff/CooperHewitt-LightItalic.woff" #:font-style "italic" #:base64 #t)
◊(font-face-declaration "cooperhewitt-book" "fonts/woff/CooperHewitt-Book.woff" #:base64 #t)

◊; * matches every element. in the styles of mb, he initiallizes margin, border, and padding to 0.
* {
	padding: 0;
	margin: 0;
	border: 0;
	font-weight: inherit;
	font-size: inherit;
	font-style: inherit;
	◊; inherit a CSS property from the parent element. But as * means every element of html, then what's the parent element of *?
	}

◊; didn't use in html.pm, but template will have body, so need this styling.
body {
  margin: 0;
  margin-left:auto; ◊; this will give the content in the center.
  margin-right:auto;
  width:100%;
  max-width:1000px;
}

#doc ◊; styles if an id is doc. This id is applied at the end, in the template.html file!
{
    margin-top: 6rem;
		◊; rem is short for root em. Unlike em, it always related to the font size of html tag.  But what's the font size of html tag?
    margin-bottom: 6rem;
    ◊(make-css-kerning)
    font-family: cooperhewitt-light;
    color: #222;
    line-height: 1.4;
}

◊(define default-margin-left 4)
◊(define default-margin-right 4)
◊(define default-width 33)

◊(define default-horiz-block-metrics (format "
			margin-left: ~arem;
			width: ~arem;
			margin-right: ~arem;" default-margin-left default-width default-margin-right))

◊|title-tag| {
    ◊|default-horiz-block-metrics|
    font-family: cooperhewitt-book;
    font-size: 1.5rem;
    line-height: 1.2;
    width: 24rem;
    margin-top: 0.25rem;
    margin-bottom: 1.5rem;
}

◊|section-tag| {
  ◊|default-horiz-block-metrics|
  font-family: cooperhewitt-book;
  font-size: 1.1rem;
  line-height: 1.2;
  padding-top: 0.7rem;
  padding-bottom: 0.8rem;
}

◊|subsection-tag| {
  ◊|default-horiz-block-metrics|
  font-family: cooperhewitt-book;
	font-size: 1.1rem;
	font-style: bold;
	margin-bottom: 0.8rem;
}

strong {
	font-family: cooperhewitt-book;
  font-size: 1rem;
	font-style: bold;
	margin-bottom: 0.8rem;
}

p {
  ◊|default-horiz-block-metrics|
	font-size: 1rem;
	margin-bottom: 0.8rem;
}

◊;{
pre code {
    border-radius: 0px; 
    -moz-border-radius: 0px; 
    -webkit-border-radius: 0px; 
    border: 0px;
    padding: 2px;
    font:12px Monaco,Consolas,"Andale  Mono","DejaVu Sans Mono",monospace
}
}
◊|code-tag|{
  font-family: sourcecodepro-light, monospace;
	font-size: 1rem;
	margin-bottom: 0.8rem;
◊; line-height: 1.2;
◊;	padding-top: 0.7rem;
◊;	padding-bottom: 0.3rem;
  border-radius: 5px; 
  -moz-border-radius: 5px; 
  -webkit-border-radius: 5px; 
  border: 1px solid #BCBEC0;
  padding: 2px;
}

◊|uncertain-tag| {
  font-style: cooperhewitt-lightitalic;
}
