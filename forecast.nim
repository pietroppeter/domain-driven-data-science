import nimib, nimislides
import my


template forecastSection* =
  slide nbText "# 2.1 Forecasting 🔮"


template pymiTalkForecastingNixtla* =
  slide:
    nbText "### Forecasting with Nixtla"
    nbImage "images/talk-pymi-forecasting.png"
    reference "[github.com/pietroppeter/pymi-timeseries-forecasting-nixtla](https://github.com/pietroppeter/pymi-timeseries-forecasting-nixtla)"

template modelling* =
  slide:
    nbText "### Modelling"
    columns:
      column:
        nbText "**Dimensions**"
        nbImage "images/forecast-dimensions.png"
      column:
        nbText """
- **Product** (SKUs, Family, Brands, Divisions)
- *Market* (Warehouses, Regions, Customers, Channels)
- Time (day, week, month)
"""
    speakerNote """
- Product 10-1M
- Market 5-1K
- Time (12-52-365)*(1-3)
- Dataset size: 10K-10B
"""

template algorithms* =
  autoAnimateSlides(2):
    nbText "### Algorithms"
    columns:
      column:
        nbText """**Statistical**

Exponential smoothing:

$$y_{t+1} = \alpha x_t + (1 - \alpha)y_t$$

- Holt Winters (trend, seasonality)
- Croston (intermitted demand)
"""
      column:
        showFrom(2):
          nbText """*ML*
- boosting methods (LightGBM, ...)
- neural methods (DeepAR, ...)
- foundational models (TimeGPT)
"""
    speakerNote "additive and multiplicative"

template evaluation* =
  autoAnimateSlides(2):
    nbText "### Evaluation"
    columns:
      column:
        nbText """**Metrics**

- Bias
- RMSE
- MAE
- ❌ MAPE
"""
        reference "[vandeput's article](https://www.linkedin.com/pulse/forecast-kpi-rmse-mae-mape-bias-nicolas-vandeput/)"
      column:
        showFrom(2):
          nbText """*M5 Competition*

- Kaggle competition
- Walmart Sales data
- Point Forecast and Probabilistic
- 12 product-market levels
- WRMSSE
"""
          reference "[research article](https://www.sciencedirect.com/science/article/pii/S0169207021001874)"
    speakerNote """
"""

template problems* =
  autoAnimateSlides(4):
    columns:
      column:
        nbText "**Seasonality**"
        showFrom(2):
          nbImage "images/seasonality.png"
      column:
        nbText "**Promotions**"
        showFrom(3):
          nbImage "images/promotions.png"
      column:
        nbText "**Initialization**"
        showFrom(4):
          nbImage "images/initialization.png"

template all* =
  forecastSection
  modelling
  algorithms
  evaluation
  problems
  pymiTalkForecastingNixtla


when isMainModule:
  myInit("forecast.nim")
  all
  nbSave