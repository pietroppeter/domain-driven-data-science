import nimib, nimislides
import my

template sectionSlide* =
  slide nbText "# 1. Domain is important 🤹"

template failureProjects* =
  slide:
    nbText "### Failure of DS/ML/AI Projects"
    nbText "some reasons why projects might fail" 
    columns:
      column:
        nbText """
#### Technology

- data quality
- model accuracy
- implementation performance
- ...
"""
      column:
        nbText """
#### Business

- stakeholders lost interest
- not valuable
- not used
- ...
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
        nbText "🚚 Domain"
        showFrom(4):
          nbRawHtml """<iframe src="https://giphy.com/embed/GTcGizhnF7wo2F74qP" width="480" height="480" style="" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/GTcGizhnF7wo2F74qP">via GIPHY</a></p>"""
        # john travolta

template all* =
  sectionSlide
  vennDiagram
  memeContent
  failureProjects

when isMainModule:
  myInit("domain.nim")
  memeContent
  nbSave