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

template all* =
  sectionSlide

when isMainModule:
  myInit("domain.nim")
  all
  nbSave