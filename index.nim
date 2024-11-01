import nimib, nimislides
import my

template titleSlide* =
  slide:
    nbText """
## Domain-driven Data Science
"""
    reference "[github.com/pietroppeter/domain-driven-data-science](https://github.com/pietroppeter/domain-driven-data-science)"

template agendaSlide* = 
  slide:
    nbText """
## Agenda

1. Why domain is important?
2. Supply Chain and Logistics
3. Stories and Ideas
"""
    speakerNote """
- (1) problem and opprotunity
- (2) the domain I know best
- (3) give hints
- mention appendix on DDD/Data Mesh? or it is part one
"""

template meSlide* = 
  slide:
    nbText """
### 👋 Pietro (he/him) 👨‍👩‍👧🇮🇹🍝🏔️⛵️🎭

- 🧮👨‍🔬 (Applied) Math
- 🏭🧑‍💻 DS@ToolsGroup [toolsgroup.com](toolsgroup.com)
- 🐙🗽 Recurse Center [recurse.com](recurse.com) 
- 💙🧡 PyData Milan [milano.python.it](milano.python.it)
- 🏄🧑‍💻 DS@AgileLab [agilelab.it](agilelab.it)
"""
    speakerNote """
- Hi I am Pietro and these are my emojis...
- (math) dynamical systems, weather and climate as my first domain (research), later cryptography
- ToolsGroup, 9 years, 200-300 international, 30 yrs old
- (break)
- AgileLab, <1yr, 150-200 consulting in 10 yrs
"""

template aSlide* = 
  slide:
    nbText """
## title

"""
    speakerNote """
"""


when isMainModule:
  myInit("index")
  titleSlide
  agendaSlide
  meSlide
  nbSave