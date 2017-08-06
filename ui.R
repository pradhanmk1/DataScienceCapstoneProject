library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("My Data Science Capstone Project"),
  sidebarPanel(
    h3("User Input"),
    br(),
    
    strong(""),
    textInput("txtPhraseInput", "Enter your words:", value = "Every inch of you is perfect from the bottom"),
    br(),

    selectInput("wordsNoPred", "Maximum predicted words:",
                choices = list("1" = 1, "2" = 2,
                               "3" = 3, "4" = 4,
                               "5" = 5, "6" = 6, 
                               "7" = 7, "8" = 8, 
                               "9" = 9, "10" = 10,
                               "11" = 11, "12" = 12,
                               "13" = 13, "14" = 14,
                               "15" = 15, "16" = 16,
                               "17" = 17, "18" = 18,
                               "19" = 19, "20" = 20), selected = 5),
    br(),
    
    strong("Click the button below to return the predicted words."),
    actionButton("buttonPredict", "Predict Next Words")
    
    
  ),
  mainPanel(
    tabsetPanel(
      
      tabPanel("Analysis",
               
               h4('Input words:'),
               verbatimTextOutput("txtPhraseOutput"),
               
               h4('Interpreted text:'),
               verbatimTextOutput("txtInterpretOut"),
               
               h4('The words predicted based on the phrase provided:'),
               tableOutput("tabPredicted")
               
      ),
      tabPanel("Documentation",

               h4("Project Requirements"),
               p("The goal of this exercise is to create a product to highlight the prediction 
                 algorithm that you have built and to provide an interface that can be accessed 
                 by others. For this project you must submit:"),
               p("1. A Shiny app that takes as input a phrase (multiple words) in a text box 
                 input and outputs a prediction of the next word."),
               p("2. A slide deck consisting of no more than 5 slides created with R Studio Presenter 
                  pitching your algorithm and app as if you were presenting to your boss or an investor."),
               br(),
               
               h4("Application Interface"),
               p("The User Input panel on the left contains three items. First is a text box to enter the 
                 phrase to be analyzed. Second is a drop down menu where you can select the maximum 
                 number of words to return (max 20). Third is a button, 'Predict Next Word' to call 
                 to action and initiates the analysis. Analysis will only be performed upon pressing this button."),
               p("The algorithm returns three things. First the 
                 original text that the user provided, second is the filtered text provided to the algorithm, third 
                 is a table with predicted words and log probability in a descending order"),
               br(),
               
               h4("Application Functionality"),
               p("The first task is to filter the input, this is same text cleaning process we used on the SwiftKey
                 data. This includes removing numbers, punctuation, foreign characters, single letter words
                 (b, c, y, etc.), and contractions etc."),
               p("Next we search of matches based on the user input. "),
               p("Once we have the desired number of matches we use a probability model to give a score for each predicted word. Scores are then sorted in descending order
                 so the most likely word is at the top of the table returned."),
               br(),
               
               h4("Source Code"),
               p("All source code can be found on GitHub")
               )
      ))
))