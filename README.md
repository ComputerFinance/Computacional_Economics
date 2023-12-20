# Machine Learning-based Time Series Prediction at Brazilian Stocks Exchange
This is the repository of the R code associated with the paper "Machine Learning-based Time Series Prediction at Brazilian Stocks Exchange," submitted to the Computational Economics in December 2023. The full paper is available at ([link](https://link.springer.com/article/10.1007/s10614-023-10529-6)).

## Available R scripts

| Filename                              | Description (**This is a mandatory steps**)                                                       |
|---------------------------------------|-------------------------------------------------------------------------------------------------|
| 00-ETL_ibov.R                         | Load and manage data from Ibovespa.                                                             |
| 01-ETL_stocks.R                       | Load and manage data from stocks.                                                               |
| 02-Data_generation_training.R         | Consolidates the training data of all stocks to be analyzed.                                    |
| 03-Complete_simulation.R              | Generation of the prediction metrics, such as R², MAE, and residuals, and storing the selected features for the predictions.  |

## Instructions
1) Install latest version of R ([link](https://cloud.r-project.org/)).

2) Install latest version of RStudio ([link](https://rstudio.com/products/rstudio/download/)).

3) Download [zip file](https://github.com/ComputerFinance/Computational_Economics/archive/master.zip) from this repository.

4) Unzip the content of zip file in a personal folder.

5) Run the first script and the others in the sequence in an orderly way to reproduce all results from the paper. For that, in RStudio, open the R script file and press _control + shift + enter_.

If these steps don't work for you, please [let us know](https://github.com/ComputerFinance/Computacional_Economics/issues) by reporting OS (windows/linux/mac), R version and error code (if any).

## Issues and bugs

If you've found an issue within the code, please use [Git issue system](https://github.com/ComputerFinance/Computacional_Economics/issues). That way everyone will be able to see the history of issues and corrections.
