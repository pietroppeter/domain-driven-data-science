import nimib, nimislides
import my

template sectionSlide* =
  slide:
    nbText "# 1. Domain 🤹"
    speakerNote "< 2'?"

template successProjects* =
  autoAnimateSlides(2):
    nbText "### Success of DS/ML/AI Projects"
    showAt(1):
      nbText "**Technology**"
      nbText """
- data quality
- model accuracy
- implementation
"""
    showAt(2):
      columns:
        column:
          nbText "**Technology**"
          nbText """
- data quality
- model accuracy
- implementation
"""
        column:
          nbText "*Business*"
          nbText """
- stakeholders
- valuable
- used
"""
    speakerNote """
- idea is domain expertise helps mostly to avoid business related failures
- but we will also see that it can help also in some tech tasks (data exploration, feature engineering, ...)
"""

template vennDiagram* =
  slide:
    nbImg("images/venn2.png", width="500px")
    reference "[Data Science Venn Diagram, Drew Conway, 2010](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram)"
    speakerNote """
- when I started in DS, it was not at all evident what a DS should do (maybe it is still not clear)
- a driving methaphor back in the days was the DS Venn Diagram which tells you that a DSist should have
- a math/stats background, skills in writing code and some domain knowledge sprinkled on top
"""

template memeContent* =
  autoAnimateSlides(4):
    nbText "### 📚 Content Production"
    columns:
      column:
        nbText "🧮 Math"
        showFrom(2):
          nbImage "images/math-content.png"
        # salt bae
      column:
        nbText "🧑‍💻 Code"
        showFrom(3):
          nbImage "images/code-content.png"
        # jonah hill excited
      column:
        nbText "🚚 *Domain*"
        showFrom(4):
          nbRawHtml """<iframe src="https://giphy.com/embed/GTcGizhnF7wo2F74qP" width="480" height="480" style="" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/GTcGizhnF7wo2F74qP">via GIPHY</a></p>"""
        # john travolta
    speakerNote """
- so you guide and find a lot of cool content about the math and stats part and you learn that
- you also learn how to use the libraries most in demand
- then you start on a project on a specific domain, and the content starts lacking both in quantity and quality,
or at least this is my impression and part of the motivation to do this talk
"""

template domainDrivenDesign* =
  slide:
    nbText "## Domain Driven Design"
    columns:
      column:
        nbImage "images/ddd.png"
      column:
        nbText "⠀"
        nbText """
- from **SWE**
- domain is important for devs
- *ubiquitous language*
"""

template dataMesh* =
  slide:
    nbText "## Data Mesh"
    columns:
      column:
        nbText """
  - Domain-Driven Design applied to Data Governance
  - *Data Product* as a central concept
  - [agilelab.it/blog](https://www.agilelab.it/blog)
  """
        reference "[1h free course on udemy](https://www.udemy.com/course/data-mesh-101-by-agile-lab/) 👉"
      column:
        nbImage "images/datamesh-udemy.png"


template subSectionInspiration* =
  slide nbText "# Inspiration 💡"

template all* =
  sectionSlide
  vennDiagram
  memeContent
  successProjects
  subSectionInspiration
  domainDrivenDesign
  dataMesh

when isMainModule:
  myInit("domain.nim")
  dataMesh
  nbSave