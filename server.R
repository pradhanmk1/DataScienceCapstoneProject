
Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_131')
library(rJava)
library(tm)
library(stylo)
library(data.table)
library(RWeka)
library(dplyr)
library(stringr)
library(shiny)

source("global.R")


shinyServer(
  function(input,output) {
    
    # Display text user provided
    txtReturn <- eventReactive(input$buttonPredict, {
      paste(input$txtPhraseInput)
    })
    output$txtPhraseOutput <- renderText({ txtReturn() })
    
    # Display 'clean' version of user text
    adjustedTxt <- eventReactive(input$buttonPredict, {
      tail(txt.to.words(cleanUserInput(input$txtPhraseInput)), 3)
    })
    output$txtInterpretOut <- renderText({ adjustedTxt() })
    
    # Get list of predicted words
    nextWord <- eventReactive(input$buttonPredict, {
      predNextWord(input$txtPhraseInput, input$wordsNoPred)
    })
    output$tabPredicted <- renderTable({ nextWord() })
    
    
  }
  
)