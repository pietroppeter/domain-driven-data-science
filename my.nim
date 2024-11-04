import std / strutils
export strutils
import nimib, nimislides

const
  agileLightBlue* = "#02A4BD"
  agileDarkBlue* = "#0e1f53"
  agileWhite* = "#FFF"
  agileLogUrl* = "https://www.agilelab.it/hubfs/logo-agilelab.png"

template addNbTextSmall* =
  nb.partials["nbTextSmall"] = "<small>" & nb.partials["nbText"] & "</small>"
  nb.renderPlans["nbTextSmall"] = nb.renderPlans["nbText"]

template nbTextSmall*(text: string) =
  nbText: text
  nb.blk.command = "nbTextSmall"

template nbImg*(url: string, width: string, caption = "", alt = "") =
  newNbSlimBlock("nbImg"):
    nb.blk.context["url"] = nb.relToRoot(url) 
    nb.blk.context["width"] = width
    nb.blk.context["alt_text"] = 
      if alt == "":
        caption
      else:
        alt
        
    nb.blk.context["caption"] = caption

template addNbImg* =
  nb.partials["nbImg"] = """<figure>
<img src="{{url}}" alt="{{alt_text}}" width="{{width}}">
<figcaption>{{caption}}</figcaption>
</figure>"""

template reference*(text: string) =
  nbTextSmall: text

template agileTheme*() =
  setSlidesTheme(Black)
  nb.addStyle: """
:root {
  --r-background-color: $2;
  --r-heading-color: $1;
  --r-link-color: $3;
  --r-selection-color: $3;
  --r-link-color-dark: darken($3 , 15%);
  --r-main-color: $1;
}

.reveal ul, .reveal ol {
  display: block;
  text-align: left;
}

li {
  padding-left: 12px;
}
""" % [agileDarkBlue, agileWhite, agileLightBlue]

template myInit*(sourceFileRel = "my.nim") =
  nbInit(thisFileRel=sourceFileRel, theme=revealTheme)
  agileTheme()
  addNbTextSmall
  addNbImg
  nbRawHtml """
<style>
.reveal strong {
  color: $1;
  font-style: normal;
}

</style>
""" % [agileLightBlue]
  nb.partials["nimibCodeAnimate"] = nb.partials["animateCode"]
  nb.renderPlans["nimibCodeAnimate"] = nb.renderPlans["animateCode"]
  nb.partials["logo"] = """
<div id="agileLabLogo" style="background: url(./images/logo-agilelab.png);
background-repeat: no-repeat;
position: absolute;
bottom: 0px;
left: 10px;
width: 250px;
height: 70px;"></div>
"""
  nb.partials["document"] = """
<!DOCTYPE html>
<html>
  {{> head}}
  <body>
  {{> main}}
  {{> logo}}
  </body>
</html>
"""
