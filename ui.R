## Load shiny library
library(shiny)
## Standard shinyUI for GUI display
shinyUI(pageWithSidebar(
        titlePanel("Simple Temperature conversion application"),
        ## Sidebarpanel
        sidebarPanel(
                helpText(p(h5("This application converts the temperature from celsius to Fahrenheit and vice versa 
                     based on your inputs."))),            
                br(),            
                radioButtons("type", label = p(h5("Choose conversion type")),
                choices = list("Convert Celsius to Fahrenheit" = 1, 
                               "Convert Fahrenheit to Celsius" = 2),selected = 1),
                br(),            
                sliderInput("slider_temperature",
                            label = p(h5("Choose the temperature you want to convert")),
                            min = -200, max = 200, value = 10)
                ),
        
        ## MainPanel
        mainPanel(
                tabsetPanel(
                        tabPanel("Output",
                                 p(h5("Your input values:")),
                                 textOutput("text_input_units"),
                                 textOutput("text_input_temperature"),
                                 br(),
                                 p(h5("Converted values:")),
                                 textOutput("text_output_temperature"),
                                 textOutput("text_output_units")
                        ),
                        tabPanel("Documentation",
                                 p(h4("Simple temperature Converter:")),
                                 br(),
                                 helpText("This application converts the temperature from one unit to another 
                              namely from Celsius(C) to Fahrenheit(F) and vice versa."),
                                 HTML("<u><b>Formula used for the conversion is: </b></u>
                        <br> <br>
                        <b> F = (C * 9/5) + 32 ; C =  (F - 32) * 5/9 </b>
                        <br>
                        You can enter any integer values between -200 to 200 using the manipulator/slider for both C & F <br>
                        <br>USAGE:
                        User selects one of the conversion type and enters the temperature using the slider, the application converts the temperature and displays the output in the converted units <br>
                    ")                
                        )
                )
        )      
))
