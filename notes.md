## Mon

- venn diagram slide [x]
  - the original or another one? another one (after reading Ullman's critique) [x]
  - ok make my own! code - math - domain. Done https://app.creately.com/d/VhWArkeN52M/edit
    - not happy about the colors. Frustrated about not being to change it. Get over it and suck it up! [x]
- add nbImg template to be able to specify width [x]
- post on zulip about it

## slides list

zero/index
- title [x]
- agenda [x]
  - why no numbered bullet points?
- me [x]
  - me/agilelab (maybe later split in 2?)
  - tatooine in the bakground? no, at most add a slide

one: domain [.1234567890]
- 1) examples (list of domains)
- 2) definition?
- 3) venn diagram (and its history)
  - parentheses on Data (Viz/Analysis, Engineering), general Data skills? yes, two things missing DE and DA
- 4) start problematizing: how much content we produce on these two?
- 5) more problems: failure of DS/ML/AI project [x]
  - examples? hint that I will tell stories later
  - (at some point a note on terminology? introduce the DS/ML/AI thing?)
- 6) claims and introduce the rest of the talk
- 7) parentheses on Domain Driven Design
- 8) and on Data Mesh
- 9) and again on AgileLab
- 10) data science as a domain (industry vs research, internal vs external, consulting/product, B2B vs B2C) - sort of a disclaimers

two: logistics [.1234567890]
- 1) what is logistics (def and quote) [x]
  - 4) flow of information vs flow of materials (diagram!)
- 2) what is Supply Chain (mgmt, new term)
- 3) example of companies
- 5) importance of L&SC in a changing world (competitive advantage on service and cost)
- 6) concept: safety stock
- 7) concept: lead time
- 11) other concepts: lost sales vs out of stock
- 8) 3 pillars of e2e planning: demand, fulfillment, replenishment
- 9) tech: time series forecasting
  - techniques, stats vs ML vs neural, (nixtla), M5 competition, (hyndman book)
  - forecasting: modelling, algorithms, evaluation
  - hierarchical forecasting
- 10) tech: research optimization (e.g. replenishment, VRP)
  - OR specialist as original data scientists? Pascal's course

three: stories [.0123456789]
- 1) npi: why they don't use it?
  - explain NPI again
  - problem
  - interface
- 2) again on npi: random forest vs boosted regressors
- 3) pos demand sensing? a failure? or in general success of TG because we were domain experts
- 11) connect to business value as much as possible
- 12) link to product/project management??
- 4) talking to business stakeholders
  - interview and discovery
  - benefit of a RAD interface (e.g. streamlit)
- 5) document business and domain essentials
- 6) ubiquitous language, use the appropriate language
- 7) how to learn: internet (youtube), follow business people, specialist books
  - (also chatgpt for sure, but you need to be careful)
- 8) get inspired by domain: Toyota's 4S and data processes
- 9) data generation process: e.g. data exploration of inbound vs outbound [x]
- 10) zeroth rule of Machine Learning: start with no ML (and further rules on complex heuristics)

four: ending, thanks, references (connect through socials)

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
- two emphasis (blue and orange) and NO italic
