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
  slide nbText "# 3. Stories & Ideas ✨"

template dataGeneratingProcess* = 
  autoAnimateSlides(2):
    nbText """
### 🏗️ Data Generating Process

Story: Data Exploration of Warehouse data
"""
    columns:
      column:
        showAt(1):
          nbImg "images/pallet-inbound.png", "300px"
        showAt(2):
          nbImg "images/pallet-outbound.png", "300px"
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


template npiTrust* = 
  slide:
    nbText """
### 🔮 Trust in the model

Story: a model for forecast of New Product sales
"""
    columns:
      column:
        nbImg "images/npi.png", "300px"
      column:
        nbText """
- model is better than baseline
- users do not trust the numbers
- they are used to a different process
- does interpretability help?
"""
    speakerNote """
- first introduce NPI and why it is important
- give context: fashion (glasses, shoes, ...)
- 1st issue: Supply Chain people do not own the process
- (2nd issue: different process) regional managers making aggregate estimates by product categories
- (interpretability) e.g. SHAP values
"""


template all* =
  sectionSlide
  dataGeneratingProcess
  npiTrust

when isMainModule:
  myInit("stories.nim")
  dataGeneratingProcess
  nbSave