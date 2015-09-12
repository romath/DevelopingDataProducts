## library(shiny)
shinyUI(fluidPage(
     titlePanel("Example of Central Limit Theorem using exponetial distribution."),
     h4("Overview."),
     helpText("The",span("Central Limit Theorem",style = "color:blue"),"(CLT) is one of the most important theorems in statistics. For our purposes, the CLT states that the distribution of averages of I.I.D. random variables becomes that of a Normal distribution as the sample size increases. In this application, we will use the exponential distribution as an example to understand the Central Limit Theorem."),
     h4("Central Limit Theorem."),
     helpText("Let \\( \\{ X_1, ... , X_n \\} \\) be a sequence of I.I.D random variables of size \\( n \\) drawn from distributions of expected values given by \\( \\mu \\) and finite variance given by \\( \\sigma^2 \\). Suppose we are interested in the sample average $$ \\bar{X}_n = \\frac{ X_1 + · · · + X_n}{n}$$ of these random variables. The CLT states that as \\( n \\) gets larger, the distribution of \\( \\bar{X}_n \\) is close to the normal distribution with mean \\( \\mu \\) and variance \\( \\frac{\\sigma^2}{n} \\)."),
     h4("Simulations."),
     helpText("The following graph shows the distribution of a sample of \\( M \\)  averages of \\( n \\) exponential distributions with parameter \\( \\lambda \\)."),
     sidebarLayout(
          sidebarPanel(
                       numericInput("numsim", label = withMathJax("\\( M = \\)"), 500, min = 500, max = 1000, step = 100),
                       radioButtons("n", label = withMathJax("\\( n = \\)"),
                                    choices = list("Choice 50" = 50, "Choice 60" = 60, "Choice 80" = 80), 
                                    selected = 50),
                       sliderInput("lambda", label = withMathJax("\\( \\lambda = \\)"), min = 0.2, 
                                   max = 0.4, value = 0.2,step=0.2)
                       ),
          mainPanel(
               plotOutput("graph")
          )
     ),
     helpText("You can move the number \\( M \\) of simulations, the number \\( n \\) of exponential distributions and the parameter \\( \\lambda \\) in the left hand side of the graph. Note that, in general, the graph have the shape of a Normal distribution.")
))

## setwd("~/....")
## runApp()