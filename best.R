best <- function(state, outcome) {
  ## Read outcome data
  dataFile <- read.csv('outcome-of-care-measures.csv')
  
  ## Check that state and outcome are valid
  
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  
  ## heart attack
  SplitDataByState <- split(dataFile, dataFile$State)
  stateFile <- SplitDataByState[state]
  stateFile <- stateFile[[state]]
  sortedDataFile <- NULL
  ## if(outcome == 'heart attack'){
  ## sortedDataFile <- stateFile[order(stateFile$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,
  ##                                   stateFile$Hospital.Name), ]
  ## }
  ## else if (outcome == 'heart failure')
  ## {
    sortedDataFile <- stateFile[order(stateFile$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure,
                                      decreasing = FALSE), ]
    ## }
    ## else if(outcome == 'pneumonia')
    ## {
    ## sortedDataFile <- stateFile[order(stateFile$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia,
    ##                                      stateFile$Hospital.Name), ]
## }
  write.csv(sortedDataFile, 'result.csv')
  sortedDataFile[1,2]
}