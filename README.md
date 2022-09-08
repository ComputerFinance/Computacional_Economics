# Machine Learning-based Time Series Prediction at Brazilian Stocks Exchange
This is the repository of the R code associated with the paper "Machine Learning-based Time Series Prediction at Brazilian Stocks Exchange," submitted to the Central European Journal of Operations Research (CEJOR) in September 2022. The full paper is available at CEJOR  ([link]( https://www.springer.com/journal/10100/)).

## Available R scripts

| Filename                              | Description **This is a mandatory step.**                                                       |
|-------------------------------------------------|-------------------------------------------------------------------------------------------------|
| 00-ETL_ibov.R                         | Load and manage data from Ibovespa.                                                             |
| 01-ETL_stocks.R                       | Load and manage data from stocks.                                                               |
| 02-Data_generation_training.R         | Consolidates the training data of all stocks to be analyzed.                                    |
| 03-Complete_simulation.R              | Generation of the prediction metrics, such as R², MAE, and residuals, and storing the selected features for the predictions.  |

## Instructions

## Issues and bugs

If you've found an issue within the code, please use [Git issue system](https://github.com/ComputerFinance/CEJOR/issues). That way everyone will be able to see the history of issues and corrections.
