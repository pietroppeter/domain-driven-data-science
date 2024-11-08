import nimib, nimislides
import my
import domain, logistics, forecast, stories#, optimization


template titleSlide* =
  slide:
    nbText """
## Domain-driven Data Science

**Pietro Peterlongo**

*PyData NYC, Nov 8 2024*

"""
    reference "[github.com/pietroppeter/domain-driven-data-science](https://github.com/pietroppeter/domain-driven-data-science)"
# add name and event?
# hint at some stuff I will say in next slides? (start introducing )
# a talk about why I think domain expertise is important for Data Scientists, where it matters

template agendaSlide* = 
  autoAnimateSlides(2):
    showAt(1):
      nbText """
## Agenda

1. Why domain is important? 🤹
2. Logistics and Supply Chain 📦
3. Stories and Ideas 💡
"""
    showAt(2):
      nbText """
## Agenda

1. Why domain is important? 🤹
2. Logistics and Supply Chain 📦
  - Forecasting 🔮
3. Stories and Ideas 💡
"""
    speakerNote """
- (1) problem and opportunity
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
  autoAnimateSlides(6):
    nbText "### 👋 Pietro (he/him) 👨‍👩‍👧🇮🇹🍝🏔️⛵️🎭"
    showFrom(2):
      nbText "- 🧮👨‍🔬 (Applied) Math"
    showFrom(3):
      nbText "- 🏭🧑‍💻 DS@ToolsGroup [toolsgroup.com](toolsgroup.com)"
    showFrom(4):
      nbText "- 🐙🗽 Recurse Center [recurse.com](recurse.com)"
    showFrom(5):
      nbText "- 💙🧡 PyData Milan [milano.python.it](milano.python.it)"
    showFrom(6):
      nbText "- 🏄🧑‍💻 DS@AgileLab [handbook.agilelab.it](handbook.agilelab.it)"
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

template conclusions* =
  autoAnimateSlides(5):
    nbText "### Conclusions"
    showFrom(2):
      nbText "- *Domain*: a worthy and relatively untapped opportunity for Data Scientist"
    showFrom(3):
      nbText "- More **complexity** than you might expect"
    showFrom(4):
      nbText "- Inspired to learn and talk about your domain? 💡"

template thanks* = 
  slide:
    nbText """# 🙏"""
    reference "🧑‍💻 [github.com/pietroppeter](https://github.com/pietroppeter)"
    reference "🦋 [@pietroppeter.bsky.social](https://bsky.app/profile/pietroppeter.bsky.social)"
    reference "🐘 [@pietroppeter@fosstodon](https://fosstodon.org/@pietroppeter)"
    nbText "👨‍💼 [LinkedIn - Pietro Peterlongo](https://www.linkedin.com/in/pietro-peterlongo-b7605627/)"
    nbText "🔵⚪️ [agilelab.it](https://www.agilelab.it/)"

template pyconit* =
  slide(slideOptions(imageBackground="images/pyconit.png")):
    nbText """<p style="font-size: 60px; font-weight: 700; color: white;">🍝Come to PyCon Italy!🤌</style>"""
    nbText """<p style="font-size: 40px; font-weight: 700; color: white;">May 28-31, Bologna | pycon.it</style>"""
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"
    nbText "⠀"

template presentation* =
  titleSlide
  agendaSlide
  meSlide
  slide:
    domain.all
  slide:
    logistics.all
  slide:
    forecast.all
  #slide: optimization.all
  slide:
    stories.all
  conclusions
  thanks
  pyconit


when isMainModule:
  myInit("index.nim")
  presentation
  nbSave