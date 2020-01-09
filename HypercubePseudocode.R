

set.seed(324)  # set the seed for the random number generator to any number you like
NumberOfTrials<-500   # How many trials we will perform
TotalCountNearSurface<-numeric()    # a vector that records how many were close to the surface for each dimension
MaxNumberOfDimensions<-10  # we will go up to this many dimensions
HowManyCloseToSurface<-0 # A variable to record how often the point is close to the surface in a given dimension
for (j in 1:MaxNumberOfDimensions) {
  HowManyCloseToSurface<-0   # reset your counter
  for (i in 1:NumberOfTrials) {
    # pick a point at random in the cube
    MyPoint<-runif(j,0,1)

    # check whether it is within 0.1 of the surface (how do you check this?)
    # if it is, increase the value of HowManyCloseToSurface by 1
    
    # record the value of HowManyCloseToSurface, this will be your estimate of the prob. of being close to surface
    TotalCountNearSurface[j]<-HowManyCloseToSurface
    
  }  
  
  # output the proportion of the volume of the cube that is within 0.1 of the surface
  cat("\nEstimatedProb.:", TotalCountNearSurface[j]/NumberOfTrials)
}

# plot your estimates of the proportion of the volume that is within 01 of the surface (y-axis)
# against the number of dimensions the hypercube has (x-axis)

# what do you notice about this proportion as N increases?
# what value do you think it takes for very large N?
