# routines
## A Productivity Package for Personal Use

The basic idea of the package is that you have some set of tasks that need to be done every day, and it acts as a checklist and record of their completion.  Good for if you want to record your own productivity.  I include a sample list of routines you could use in the `/data` directory.  I hope that all of the functions have adequately descriptive names, but I have some basic documentation, since it is for personal use I don't include too much.

The basic idea can be illustrated with an R script (more explanation to come):

```
library(routines)

directory <- getwd()

dir.create(directory)
newRoutineRecord(directory)

showRoutines(directory)
addRoutines("Exercising in the morning", "Morning routine", directory)
showRoutines(directory)

routinesRecorded(directory)
recordRoutines("Eating breakfast", directory)
routinesRecorded(directory)

routinesNotCompleted(directory)

finishRoutines(directory = directory)
routinesRecorded(directory)

showKindOfRoutine("Morning", directory, exactMatching = F)

removeRoutines("Eating breakfast", directory)
showRoutines(directory)
```
