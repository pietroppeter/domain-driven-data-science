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
  slide:
    nbText """### Random forest vs Xgboost

todo
"""
    nbText "My context: AutoML for Forecast Initialization"
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
      column:
        nbText "**Interface**"

template documentDomainEtAl* =
  slide:
    nbText "### Business, Domain, Data essential"

template learnTheDomain* =
  slide:
    nbText "### Learn the Domain"
    # as a data scientist

template inspiredByDomain* =
  slide:
    nbText "### Get inspired by Domain"

template all* =
  sectionSlide
  npiTrust
  dataGeneratingProcess
  rulesML
  talkToStakeholder # todo
  documentDomainEtAl # todo
  randomForestVSXgboost # todo
  learnTheDomain # todo
  inspiredByDomain # todo

when isMainModule:
  myInit("stories.nim")
  randomForestVSXgboost
  nbSave