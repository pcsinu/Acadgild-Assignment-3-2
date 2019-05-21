start.time <- Sys.time()
m <- replicate(10,rnorm(10))
print(m)

sinval <- sin(90)
#print(sinval)
beforeadding.time <- Sys.time()
n <- m + sinval
vectorend.time <- Sys.time()
print(n)

for(i in 1:10)
{
  for(j in 1:10)
  {
    #print(m[i,j])
    m[i,j] <- m[i,j] + sinval
  }
}

print(m)

arrayend.time <- Sys.time()
time.taken <- round(vectorend.time - beforeadding.time,5)
time.taken

print(time.taken)

loop.time <- round(arrayend.time - vectorend.time,5)

print(loop.time)