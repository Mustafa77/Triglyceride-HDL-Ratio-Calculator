
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Triglyceride/HDL Ratio Calculator"),
      
    sidebarPanel(
      helpText("Please enter your Triglyceride and HDL cholesterol below:"),
      numericInput('TG', 'Triglyceride mg/dl', 100, min = 50, max = 2000, step = 5),
      numericInput('HDL', 'HDL cholesterol mg/dl', 40, min = 5, max = 200, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of TG/HDL-C Ratio calculator'),
      h4('Your triglyceride value is '),
      verbatimTextOutput("inputValue1"),
      h4('Your HDL cholesterol is'),
      verbatimTextOutput("inputValue2"),
      h4('Your TG/HDL ratio is '),
      verbatimTextOutput("prediction"),
      textOutput("text1"),
      textOutput("text2"),
      textOutput("text3"),
      textOutput("text4")
      
    )
  )
)
