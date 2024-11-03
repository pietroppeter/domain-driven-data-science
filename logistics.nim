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
  slide nbText "# 2. Logistics & Supply Chain"

template whatLogistic* =
  slide:
    nbText """
### What is Logistics?

Logistics is the process of strategically managing the procurement,
movement and storage of materials, parts and finished inventory
(and related information flows)

> before the fighting proper,
> battle is won or lost by quatermasters
>
> -- Rommel
"""
    speakerNote """
- def continues: "...through the organisation and its marketing channels in such a way
  that current and future profitability are maximised through the cost-effective fulfillment of orders"
- you will always find a quote about how logistics is very old thing tied both to military and trade
  (you can use it think about Roman Empire if you want)
""" # find a better quote? the engineer guy from Sapienza had good slides
# add diagram
# ------ Materials flow ------>
# Suppliers | Procurement - Operations - Distribution | Customers
# <----- Information flow -----

template all* =
  sectionSlide
  whatLogistic

when isMainModule:
  myInit("logistics.nim")
  whatLogistic
  nbSave