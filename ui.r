shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Chances of survival for the Titanic"),
    
    sidebarPanel(
      
      selectInput('s1', label = h3("Class"), 
                  choices = list("1st" = 1, "2nd" = 2, "3rd" = 3,"Crew"=4), 
                  selected = 1),
      selectInput('s3', label = h3("Age"), 
                  choices = list("Adult" = 2, "Child" = 1), 
                  selected = 1),
      selectInput('s2', label = h3("Gender"), 
                  choices = list("Female" = 2, "Male" = 1), 
                  selected = 1),
      submitButton('Submit')
      
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('The chances of survival are'),
      verbatimTextOutput('se'),
      h5('This program uses the proportions given by the data set instead of a regression model, for the sake of simplicity.  The case of a child crew member returns NaN, meaning that there are no child crew members.')
    )
  )
)