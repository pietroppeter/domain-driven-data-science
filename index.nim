import nimib, nimislides
import my
import domain, logistics, forecast, stories#, optimization


template titleSlide* =
  slide:
    nbText """
## Domain-driven Data Science

**Pietro Peterlongo**

*PyCon Italy, Bologna,  May 29 2025*

"""
    reference "[github.com/pietroppeter/domain-driven-data-science](https://github.com/pietroppeter/domain-driven-data-science)"
    speakerNote """
Hi, I want to talk about why I think that
the role of domain expertise in data science is important
and possibly convince you that is worth investing more effort in learning about your domain

slides are on github
"""

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
- In the first part of the talk I will introduce the domain topic and argue on it importance
- next I will share a quick intro to the domain I know best, Logistics & SC
- finally I will go over a number of somehow disconnected stories and ideas
  on how to make your Data Science practice more domain-driven
- I will also share how a particular technical and general topic, Forecasting, can be shaped by the domain it applies to

"""

template meSlide* =
  # todo: make it appear one by one
  autoAnimateSlides(2):
    nbText "### 👋 Pietro (he/him) 👨‍👩‍👧🇮🇹🍝🏔️⛵️🎭"
    showFrom(2):
      nbText "- 🧮👨‍🔬 (Applied) Math"
      nbText "- 🏭🧑‍💻 (previously) DS@ToolsGroup [toolsgroup.com](toolsgroup.com)"
      nbText "- 💛💙🧡 Python/PyData Milan [milano.python.it](milano.python.it)"
      nbText "- 🏄🧑‍💻 DS@AgileLab [handbook.agilelab.it](handbook.agilelab.it)"
    speakerNote """
- Hi I am Pietro and these are my emojis...
- my background is in math and a piece of trivia I cannot resits sharing being here in Bologna
  is that my great grandmother also graduated in Math here more than a century ago
- I have worked for almost 9 years in a company that sells a Supply Chain Planning and Optimization software,
  and that is where my domain background comes from
- I am part of Python Milan organizer, if you want to get in touch and come as a speaker let us now
- finally I have been working in the last year in AgileLab, a very interesting place for Data people, more on that later
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

template agilelab* =
  slide:
    reference "We have a Public handbook 📘 [handbook.agilelab.it](handbook.agilelab.it)"
    columns:
      column:
        reference "Self-management system (Holacracy)"
        nbImage "images/hola.png"
      column:
        reference "Agile Nomads (work 2 weeks from Canary Islands)"
        nbImage "images/nomads.png"
    reference "we are hiring [careers.agilelab.it](careers.agilelab.it)"

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
  #pyconit
  agilelab


when isMainModule:
  myInit("index.nim")
  presentation
  nbSave


#[
for 
timings:
- 2' intro 3 (title, agenda, me)
- 5' domain 5 = 3+2 (venn diagram, no content, **success** + inspiration DDD and Data Mesh)
- 10' max logistics 7 (what, storage + transporation, automation, SC, planning, uncertainit, constraints)
- 10' max forecast 5 (modelling, algorithm, evaluation, problems, nixtla talk)
- 10' max stories 7 (trust, data generating process, no ML rule, experts, document, learn, inspired)
- 1' closing 3 (conclusions, thanks, agilelab)
(38')
]#