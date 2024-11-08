import nimib, nimislides
import my

template sectionSlide* =
  slide nbText "# 2. Logistics & Supply Chain 🚚"

template whatLogistic* =
  slide:
    nbText """
### What is Logistics?
"""
    nbImage "images/logistics.png"
    nbTextSmall """
"an army without its baggage train is lost;
without provisions it is lost;
without bases of supply it is lost"
Art of War, Sun Tzu, 5th BC
"""
    speakerNote """
- def: Logistics is the process of strategically managing the procurement,
movement and storage of materials, parts and finished inventory
(and related information flows)
- def continues: "...through the organisation and its marketing channels in such a way
  that current and future profitability are maximised through the cost-effective fulfillment of orders"
- logistics is homonym of the logistics curve, comes from French Marechal de Logis, the officer in charge of the functioning of an army
- logistics is now a cornerstone of international trade
"""

template modernSupplyChains* =
  autoAnimateSlides(2):
    columns:
      column:
        nbImg("images/network-maersk.svg", "300px")
      column:
        nbText "### Modern Supply Chains"
        showFrom(2):
          nbText """
- extended networks of suppliers
- demand-driven market
- compete on both *service* and **cost**
- turbulence and volatility
"""
    speakerNote """
- (network) aka globalisation
- (network) also internal network increases
"""

template storageTransportation* =
  slide:
    columns:
      column:
        nbText "### Storage"
        nbImage "images/warehouse.png" # https://en.wikipedia.org/wiki/Distribution_center
      column:
        nbText "### Transportation"
        nbImage "images/container-ship.png"

template automation* =
  slide:
    nbText "### Automation"
    nbImage "images/automation.png"

template e2ePlanning* =
  autoAnimateSlides(5):
    nbText "### Planning"
    showFrom(2):
      columns:
        column:
          nbText "**Demand**"
          showFrom(3):
            nbImg("images/demand.png", "300px") # does not respond to width
        column:
          nbText "*Service*"
          showFrom(5):
            nbImg("images/service.png", "300px")
        column:
          nbText "**Stock**"
          showFrom(4):
            nbImg("images/stock.png", "300px")

template uncertainty* =
  autoAnimateSlides(3):
    nbText "### Uncertainity"
    nbText "Demand is uncertain, Supply is uncertain"
    showAt(2):
      nbText "#### *Lead Time*"
      nbImg("images/lead-time.png", "500px")
    showFrom(3):
      columns:
        column:
          nbText "#### *Lead Time*"
          nbImg("images/lead-time.png", "500px")
        column:
          nbText """#### **Safety Stock**
  - extra stock due to uncertainty to mitigate risk of stock outs
  - linked to demand variability
  """

template constraints* =
  autoAnimateSlides(3):
    nbText "### Constraints"
    showFrom(2):
      nbText """
- **capacity** constraints: production, budget, storage, time
- **integral** constraint: minimum lot, incremental lot, unit of measures
- **feasibility** constraints: schedules, opening hours
"""
    showFrom(3):
      nbText "Optimization techniques (*Operations Research*)"

template all* =
  sectionSlide
  whatLogistic
  storageTransportation
  automation
  modernSupplyChains
  e2ePlanning
  uncertainty
  constraints

when isMainModule:
  myInit("logistics.nim")
  all
  nbSave