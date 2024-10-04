import nimib, nimislides
import my

template titleSlide* =
  slide:
    nbText """
## Domain-driven Data Science
"""
    reference "[github.com/pietroppeter/domain-driven-data-science](https://github.com/pietroppeter/domain-driven-data-science)"

template contentExample* = 
  slide:
    nbText "## a title\n- some content\n- [a link]()\n- this is **strong**"

when isMainModule:
  myInit("index")
  titleSlide
  contentExample
  nbSave