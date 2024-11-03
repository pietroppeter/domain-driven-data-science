import nimib, nimislides
import my
import domain, logistics, stories


template titleSlide* =
  slide:
    nbText """
## Domain-driven Data Science
"""
    reference "[github.com/pietroppeter/domain-driven-data-science](https://github.com/pietroppeter/domain-driven-data-science)"
# add name and event?
# hint at some stuff I will say in next slides? (start introducing )
# a talk about why I think domain expertise is important for Data Scientists, where it matters

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

The aim is to:
- highlight why this is important and undervalued and underexplored
- teach you something about a specific domain
- give some examples of where domain thinking might help
  (and maybe we do it unconsciounsly)
- also trying to be a but more systematic and conscious about the domain component of our work

ultimate hope is to contribute to stimulate more talks about domain issues,
since I want to hear more of them
"""

template meSlide* =
  # todo: make it appear one by one
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

Motivation for this part is:
- in part credibility in what I say
- but a lot also to put into context of what I say
- and to be clear about limitations about what I say
- (it may or not apply to your case)

My hope in general is that more people do talks about domain expertise
so that we can learn from multiple point of views
"""

template aSlide* = 
  slide:
    nbText """
## title

"""
    speakerNote """
"""


when isMainModule:
  myInit("index.nim")
  titleSlide
  agendaSlide
  meSlide
  slide:
    domain.all
  slide:
    logistics.all
  slide:
    stories.all
  nbSave