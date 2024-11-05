import nimib, nimislides
import my


template pymiTalkForecastingNixtla* =
  slide:
    nbText "### Forecasting with Nixtla"
    nbImage "images/talk-pymi-forecasting.png"
    reference "[github.com/pietroppeter/pymi-timeseries-forecasting-nixtla](https://github.com/pietroppeter/pymi-timeseries-forecasting-nixtla)"

template forecastModelling* =
  slide:
    nbText "### Forecast: Modelling"
    columns:
      column:
        nbText "**Dimensions**"
        nbImage "images/forecast-dimensions.png"
      column:
        nbText """
- Product (SKUs, Categories, Brands) 10-1M
- Market (Warehouses, Regions, Channels) 5-1K
- Time (day, week, month) (12-52-365)*(1-3)

Dataset size: 100-100B
"""

template all* =
  forecastModelling
  pymiTalkForecastingNixtla


when isMainModule:
  myInit("forecast.nim")
  forecastModelling
  nbSave