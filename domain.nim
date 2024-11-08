import nimib, nimislides
import my

template sectionSlide* =
  slide nbText "# 1. Domain is important 🤹"

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
  autoAnimateSlides(3):
    nbText "## Data Mesh"
    columns:
      column:
        nbImage "images/data-mesh.png"
      column:
        showUntil(2):
          nbText "⠀"
          nbText """
  - DDD for Big Data
  - *Data Product*
  - [agilelab.it/blog](https://www.agilelab.it/blog)
  """
        showAt(3):
          nbImg("images/paolo.png", "200px")
    showAt(2):
      nbText "Our product: _witboost_ 🤝"

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
  all
  nbSave