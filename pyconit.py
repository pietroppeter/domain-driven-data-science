import nobe
from nobe.slides import Presentation, SlidesTheme

LIGHT_BLUE = "#02A4BD"
DARK_BLUE = "#0e1f53"
WHITE = "#FFF"
ORANGE = "#ee961a"
LOGO_URL = "https://www.agilelab.it/hubfs/logo-agilelab.png"



def agile_theme():
    nb.reveal_theme = "black"
    nb.custom_body = f"""
<style>
:root {{
  --r-background-color: {WHITE};
  --r-heading-color: {DARK_BLUE};
  --r-link-color: {LIGHT_BLUE};
  --r-selection-color: {LIGHT_BLUE};
  --r-link-color-dark: darken({LIGHT_BLUE} , 15%);
  --r-main-color: {DARK_BLUE};
}}

.reveal ul, .reveal ol {{
  display: block;
  text-align: left;
}}

li {{
  padding-left: 12px;
}}
.reveal strong {{
  color: {LIGHT_BLUE};
  font-style: normal;
}}

.reveal em {{
    color: {ORANGE};
    font-style: normal;
    font-weight: 700;
}}
</style>

<div id="agileLabLogo" style="background: url(./images/logo-agilelab.png);
background-repeat: no-repeat;
position: absolute;
bottom: 0px;
left: 10px;
width: 250px;
height: 70px;">
</div>
"""

def title():
    nb.slide()
    nb.text("""
## Domain-driven Data Science

**Pietro Peterlongo**

*PyCon Italy, May 2025*
             
""")
    nb.text_small("[github.com/pietroppeter/domain-driven-data-science](https://github.com/pietroppeter/domain-driven-data-science)")


def agenda():
    nb.slide_text("""
## Agenda

1. Why domain is important? 🤹
2. Logistics and Supply Chain 📦
3. Stories and Ideas 💡

""")

if __name__ == "__main__":

    nb = Presentation()
    nobe.theme = SlidesTheme()
    agile_theme()

    title()
    agenda()

    nb.save()
