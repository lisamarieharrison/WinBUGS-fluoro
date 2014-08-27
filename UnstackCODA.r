#=================================================================
#CODA output for the models
#=================================================================
unstkcoda <- function(codaind, coda, thin){
# codind -> the file identifying the draws for each parameters
# coda   -> file with draws
# thin   -> set to zero when running the code. Tends to fall over otherwise
vrb <- codaind[,1]
draws <- matrix(nrow=(codaind[1,3] - (codaind[1,2]+thin) + 1), ncol = length(vrb), dimnames=list(NULL,vrb))
for(i in 1:length(vrb)){
   draws[,i] <- coda[(codaind[i,2]+thin):codaind[i,3],2]
  }
return(draws)
}
#==================================================================