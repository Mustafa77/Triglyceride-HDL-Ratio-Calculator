library(shiny)

TG_HDLratio <- function(TG, HDL )  TG/ HDL

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$TG})
    output$inputValue2 <- renderPrint({input$HDL})
    output$prediction <- renderPrint({TG_HDLratio(input$TG, input$HDL)})
    output$text1 <- renderText({"Note: your Coronary Heart Disease (CHD) based on the result from the calculator" })
    output$text2 <- renderText({"TG/HDL-C ratio less than 2 is ideal" })
    output$text3 <- renderText({"TG/HDL-C ratio between 2 and 4 is a risk factor for CHD" })
    output$text4 <- renderText({"TG/HDL-C ratio above 4 is a strong predictor  of CHD" })
    
    
  }
)

