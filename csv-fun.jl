#Importing CSV files in Julia

#here's where the fun begins
using Pkg #use these lines to install the CSV and DataFrames packages, only necessary a first time in the local machine used
#Pkg.add("CSV")
#Pkg.add("DataFrames") 
#Pkg.add("Plots")

using CSV
using DataFrames

iris = CSV.read("iris.csv", DataFrame, normalizenames = true)

println(typeof(iris))
println(names(iris))
println(size(iris))

println(first(iris,5)) #works the same way as head
println(last(iris,5))

println(describe(iris))

println(iris.variety)

println(iris[:,3]) #all rows, third column
println(iris[:,[1,2,3]]) #all rows, first three columns
println(iris[1:5,:]) #first 5 rows, all columns
println(iris[1:5,1:2]) #first 5 rows, first two columns

#Visualizing Data in Julia
using Plots
println(plot())

x = 1:15; y = rand(15)
plot(x,y)

z = rand(15)
plot!(x,z) #mutating the existing plot

p = plot(x,y)
plot!(p,x,z)

plot(x,y,title="One random line chart")

plot(x,y,title="Random line chart",label="Line Chart 1")