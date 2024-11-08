## cleanup

changes
- agenda: add emojis [x]
- domain [x]
- logistics [x]
  - added automation [x]
- forecast [x]
- add pyconit at the end!

## slides list

`section: target (missing)`

- intro 3 (0) [x]
- 1. domain 5 (0) [x]
- 2. logistics 7 (1)
  - forecasting 6 (1)
- 3. stories & ideas 8 (0) [x]
- conclusions 2 (0) [x]

total 31 (8)

zero/index [...3]
- title [x]
- agenda [x]
  - revise the agenda to include forecasting and optimization [x]
- me [x]
  - me/agilelab (maybe later split in 2?)
  - tatooine in the bakground? no, at most add a slide

one: domain [...345]
- 1) venn diagram (and its history) [x]
  - parentheses on Data (Viz/Analysis, Engineering), general Data skills? yes, two things missing DE and DA
- 2) start problematizing: how much content we produce on these two? memes! [x]
- 3) more problems: failure of DS/ML/AI project [x]
  - examples? hint that I will tell stories later
  - (at some point a note on terminology? introduce the DS/ML/AI thing?)
- 4) parentheses on Domain Driven Design [x]
- 5) and on Data Mesh [x]
  - more on AgileLab

skipped:
- examples (list of domains)
- definition?
- claims and introduce the rest of the talk
- [x] data science as a domain (industry vs research, internal vs external, consulting/product, B2B vs B2C) - sort of a disclaimers (NO, discuss this in the Me slide)

two: logistics [.....567]
- 1) what is logistics (def and quote) [x]
- 2) storage and transportation [x]
- 3) modern Supply Chains [x]
  - importance of L&SC in a changing world (competitive advantage on service and cost)?
- 4) Planning: demand, service, stock [x]
  - other concepts: lost sales (due to out of stock) vs overstock?
- 5) uncertainty (lead time and safety stock) [x]
- 6) constraints [x]
  - many
- 7) complexity slide?
  - example of companies and specific issuesx
  - spare parts, very erratic demand
  - dairy products (yogurts), highly promoted demand
  - fashion/(consumer goods?), short product life cycles
  - airlines and telco 
  - ... distributors? 

twoA: forecasting [.....56]
- 0) subsection slide [x]
- 1) forecast dimensions / modelling [x]
- 2) forecast algorithms [x]
  - simple techniques: exponential smoothing, Holt Winters, Croston
  - techniques, stats vs ML vs neural, (nixtla), M5 competition, foundational models (hyndman book)
- 3) forecasting evaluation [x]
- 4) important techniques in forecasting
  - hierarchical forecasting
  - probabilistic forecasting (conformal prediction)
- 5) forecasting problems: seasonality, promotion, initialization [x]
- 6) link to my talk on forecasting! [x]

twoB: optimization [X] NO, SKIP!
- operations research optimization (e.g. order generation, VRP)
- OR specialist as original data scientists? Pascal's course


three: stories [........8]
- 1) npi: why they don't use it? [x]
- 2) data generation process [x]
- 3) 1st rule of Machine Learning: start with no ML (and further rules on complex heuristics) [x]
- 4) talking to business stakeholders [x]
- 5) document business and domain essentials [x]
- 6) random forest vs boosted regressors [x]
- 7) how to learn: internet (youtube), follow business people, specialist books [x]
- 8) get inspired by domain: Toyota's 4S and data processes [x]

four [..2]
- conclusions [x]
- thanks [x]

### Mon

- venn diagram slide [x]
  - the original or another one? another one (after reading Ullman's critique) [x]
  - ok make my own! code - math - domain. Done https://app.creately.com/d/VhWArkeN52M/edit
    - not happy about the colors. Frustrated about not being to change it. Get over it and suck it up! [x]
- add nbImg template to be able to specify width [x]
- post on RC zulip about it [x]
- improve venn diagram with excalidraw [x]

...

## agenda

3 main parts (domain, logistics, stories)

- intro
  - agenda
  - me/context
    - math
    - like programming
    - started in data science 10 years ago
    - from product to consulting
    - feelings of province of the empire?
    - PyData!
    - (RC)
  - agilelab
    - italian (starts)
    - core sowftare engineering + agile + innovation
    - elite data engineering
    - data mesh
    - data governance/data platform witboost
    - innovative: public handbook, hola!
- inspiration
  - software engineering
  - domain driven design
    - ubiquitous language
  - data mesh
- domain
  - history
  - venn diagram
  - various roles (DS, DE, DA) DS younger than DE? DA?
  - why important (for more impact/less failures)
  - claim: we have many code/algo resources, far fewer domain resources and less methodology to study a domain
  - data science as a domain
    - B2B vs B2C (vs science/research)
- logistics
  - history
  - supply chain
  - code and math highlights (forecasting, optimization, ml/learning? ...)
  - data science and OR
  - warehouses
  - transportation
- stories
  - why sometimes random forest better than boosting?
  - why they are not using NPI?
  - ... (other stories from TG)
  - story of warehouse project
  - story of optical networks 
- methods/ideas
  - write a business and domain essential
  - read domain books
  - establish ubiquitous language (and iterate on it)
    - use it in code! refactor to make sure you are up to date!
  - youtube videos of domain experts (optical fiber)
  - follow people on socials (e.g. OR/SC list)
- conclusions?

## resources

- article: [The Evolution of The Data Engineer: A Look at The Past, Present & Future](https://airbyte.com/blog/data-engineering-past-present-and-future), Barrera 2022
- article: [The Rise of the Data Engineer](https://medium.com/free-code-camp/the-rise-of-the-data-engineer-91be18f1e603)
- [tweet by Chelsea](https://x.com/ChelseaParlett/status/1831131865115488490) "If your first data hire is a data scientist, what you really hired is an inexperienced data engineer"
- article on venn diagram [critique by Ullman 2021](https://www.bigdatawire.com/2021/08/18/what-is-data-science-a-turing-award-winner-shares-his-view/)
- slides on logistics and supply chain https://management.web.uniroma1.it/sites/default/files/Dalla%20logistica%20integrata%20al%20supply%20chain%20management.pdf
- quote Art of War https://suntzusaid.com/book/7
- logistics as a homonym https://en.wikipedia.org/wiki/Logistics#Origin
- maersk supply chain https://www.maersk.com/logistics-explained/supply-chain-management/2024/02/02/supply-chain-explained

## random notes

slide on venn diagram:
- quote the original source
- what is missing? data
- note that industry at the time did not have data engineers (I think): https://x.com/ChelseaParlett/status/1831131865115488490

small data project idea:
- look in towards data science how much domain is represented
- look in curricula for Data Science course how much domain is represented

https://martinfowler.com/tags/domain%20driven%20design.html

a discussion of OR versus Data Science is also in order. OR as the science of better decisions seems perfectly in line with DS objectives but it predated the Data Scientists and it is still a somwhat distinct community (they seem to be getting closer).
There might be many reason for this but a new sexy role might be one of them.

a section could be: what domain knowledge can give back to Data Science and should feature:

- genchi genbutsu
- and the 5(?) S


disclaimer: will restrict to Data Science in the business domain (no science)

## nice to haves

- better CSS for quotes (a background?) and headers (all caps? a different font?)
  - better style for art of war quote
- two emphasis (blue and orange) and NO italic
