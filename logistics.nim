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
  slide:
    columns:
      column:
        nbImg("images/network-maersk.svg", "300px")
      column:
        nbText "### Modern Supply Chains"
        nbText """
- extended networks of suppliers
- demand-driven market
- compete on both **service** and **cost**
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

template e2ePlanning* =
  slide:
    nbText "### Planning"
    columns:
      column:
        nbText "**Demand**"
        nbImg("images/demand.png", "300px") # does not respond to width
      column:
        nbText "**Service**"
        nbImg("images/service.png", "300px")
      column:
        nbText "**Stock**"
        nbImg("images/stock.png", "300px")

template uncertainty* =
  slide:
    nbText "### Uncertainity"
    nbText "Demand is uncertain, Supply is uncertain"
    columns:
      column:
        nbText "#### **Lead Time**"
        nbImg("images/lead-time.png", "500px")
      column:
        nbText """#### **Safety Stock**
- extra stock due to uncertainty to mitigate risk of stock outs
- linked to demand variability
"""

template all* =
  sectionSlide
  whatLogistic
  storageTransportation
  modernSupplyChains
  e2ePlanning
  uncertainty

when isMainModule:
  myInit("logistics.nim")
  all
  nbSave