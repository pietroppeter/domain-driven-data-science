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
  slide nbText "# 3. Stories & Ideas"

template all* =
  sectionSlide

when isMainModule:
  myInit("stories.nim")
  all
  nbSave