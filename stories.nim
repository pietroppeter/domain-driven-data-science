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

template dataGeneratingProcess* = 
  slide:
    nbText """
### Data Generating Process

Think about it e.g. during Data Exploration
"""
    columns:
      column:
        nbImg "images/pallet.png", "300px"
      column:
        nbText """
- order data: many more rows for outbound than inbound orders, why?
- pick task data: missing a day in a specific week, why?
- ...
"""
    speakerNote """
- why more outbound than inbound? outbound is much more complex (suppliers send truck with more )
- why missing pick task data? internet was down for a day for an IT issue
- ...
""" # more cases?


template all* =
  sectionSlide
  dataGeneratingProcess

when isMainModule:
  myInit("stories.nim")
  dataGeneratingProcess
  nbSave