# routines
### A Productivity Package for Personal Use

The basic idea of the package is that you have some set of tasks that need to be done every day, and it acts as a checklist and record of their completion.  Good for if you want to record your own productivity.  I include a sample list of routines you could use in the `/data` directory.  I hope that all of the functions have adequately descriptive names, but I have some basic documentation, since it is for personal use I don't include too much.

The basic idea can be illustrated with an R script (more explanation to come):

```
library(routines)

directory <- getwd() ## Choose where to set up the routines
 
newRoutineRecord(directory) ## Creates two new files recording your routines and when you've completed them

showRoutines(directory) ## See default routines
addRoutines("Exercising in the morning", "Morning routine", directory) ## Add a new routine and a description for it
showRoutines(directory) ## See that it has been added to your routine

routinesRecorded(directory) ## See what routines you've already completed
recordRoutines("Eating breakfast", directory) ## Add that you've completed one of your routines
routinesRecorded(directory) ## See that it has been added

routinesNotCompleted(directory) ## See what you haven't done yet of your daily routines

finishRoutines(completed = F, directory = directory) ## Put your remaining routines as incomplete
routinesRecorded(directory) ## See this addition

showKindOfRoutine("Morning", directory, exactMatching = F) ## See which routines include the morning in their description

removeRoutines("Eating breakfast", directory) ## Remove one routine from your list of routines
showRoutines(directory) ## See that it has been removed
```
