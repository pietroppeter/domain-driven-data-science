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
  slide nbText "# 3. Stories & Ideas 💡"

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

template rulesML* =
  slide:
    nbText "### Rules of ML"
    columns:
      column:
        nbImage "images/first-rule-ml.png"
        reference "[Eugene Yan on 1st rule](https://eugeneyan.com/writing/first-rule-of-ml/)"
      column:
        nbText """
2. First, design and implement metrics
3. Choose machine learning over a complex heuristic.
""""
        reference "[Google's rules of ML](https://developers.google.com/machine-learning/guides/rules-of-ml)"
    speakerNote """
1. Don’t be afraid to launch a product without machine learning
- go with a naive forecast or a greedy method, mean, mode
"""    

template randomForestVSXgboost* =
  autoAnimateSlides(5):
    nbText """### Random forest vs Xgboost"""
    showFrom(1):
      nbText "Context: AutoML for Forecast Initialization"
    showFrom(2):
      nbText "- boosted trees may predict outside training range"
    showFrom(3):
      nbText "- boosted trees more difficult to calibrate than RF"
    showFrom(4):
      nbText """- learned: 1) resist the hype; 2) watch your results."""
    speakerNote """
- acknowledge it is a bit of a provocation but
- context is to have an AutoML tool
- ideally boosted trees are better performance wise (but note that performance is not priority here, see previous slide)
- but: they can forecast stuff outside of ranges (that is something you have to take into account - and you cannot just clip away, you have to redistribute "mass")
- general idea is: resist the hype, sometimes there are reasons
"""

template talkToExperts* =
  slide:
    nbText "### Talk to experts"
    columns:
      column:
        nbText "**Interview**"
        nbText """
Try to uncover **opportunties** and **risks**
for a data-driven tool you might want to build.
"""
      column nbText "⠀" # I do not like I have to do that
      column:
        nbText "**Interface**"
        nbText """
It helps to iterate with an **interactive**
tool that shows data and visualization.
"""
    speakerNote """
- interview story: added goal to help them challenge customer orders?
- interface story: streamlit can be refreshing for someone who has seen only BI. The finance story.
"""

template documentDomain* =
  autoAnimateSlides(5):
    nbText "### Document the domain"
    showFrom(2):
      nbText "e.g. **Business**, *Domain* and **Data** essentials in README"
    showFrom(3):
      nbText """
```md
- Company X is investing strategically in 3rd party logistics
- Low costs are key to a successful operation
```
"""
    showFrom(4):
      nbText """
```md
- Main cost component in a Warehouse is picking (time)
- Using a ABC class based positioning of items could help
```
"""
    showFrom(5):
      nbText """
```md
- Data comes from a WMS
- We have 2 years of data, 1 year of clean data
```
"""

template learnTheDomain* =
  autoAnimateSlides(4):
    nbText "### Learn the Domain"
    columns:
      column:
        nbText "**Socials**"
        showFrom(2):
          nbImage "images/vandeput.png"
      column:
        nbText "**Experts**"
        showFrom(3):
          nbImage "images/ubicazione.png"
      column:
        nbText "**Books**"
        showFrom(4):
          nbImage "images/scl-book.png"
  speakerNote """
- optical networks story
- chatGpt, the good and the bad
"""


template inspiredByDomain* =
  slide:
    nbText """### Get inspired by Domain

**5S methodology**

1. 整理 (_seiri_) Sort
2. 整頓 (_seiton_) Straighten
3. 清掃 (_seiso_) Shine
4. 清潔 (_seiketsu_) Standardize
5. しつけ (_shitsuke_) Sustain

"""
    speakerNote """
1. data cleaning
2. create a DAG
3. Clean Code
4. CI
5. ?
"""

template all* =
  sectionSlide
  npiTrust
  dataGeneratingProcess
  rulesML
  talkToExperts
  documentDomain
  randomForestVSXgboost
  learnTheDomain
  inspiredByDomain

when isMainModule:
  myInit("stories.nim")
  documentDomain
  nbSave