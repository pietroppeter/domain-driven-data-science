import nimib, nimislides
import my

template aSlide* = 
  slide:
    nbText """
## title

"""
    speakerNote """
"""

template sectionSlide* =
  slide nbText "# 1. Domain is important"

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
    nbImg("images/venn1.png", width="500px")
    reference "[Data Science Venn Diagram, Drew Conway, 2010](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram)"

template all* =
  sectionSlide
  vennDiagram
  failureProjects

when isMainModule:
  myInit("domain.nim")
  vennDiagram
  nbSave