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
  slide nbText "# 2. Logistics & Supply Chain"

template all* =
  sectionSlide

when isMainModule:
  myInit("logistics.nim")
  all
  nbSave