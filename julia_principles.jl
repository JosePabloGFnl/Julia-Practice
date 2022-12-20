#Julia Variable with Airthmatic operations and evaluating variable types
loan_amount = 100000
interest_rate = .015
tenure = 5

println(loan_amount * tenure)

string = "This is a "
string2 = "concatenated string"

println(string * string2)

println(typeof(loan_amount))

#Arithmetic Operator Precedence in Julia /*+-

println(2 + 5 - 6/2 *3)
println((2 + 5) - (6/2) *3)

println(2 * 3/3)

println(6/2 * 3)

#Arrays

array_1 = [1,2,3,4,5]
array_2 = [1,2.0,3,4,5] #this will turn every value into a float

string_1 = ["I", "code", "in", "Julia"]

funtion_array_1 = [print,println,printstyled]

array_3 = [1,2.0,"Julia"] #array of type "any"

type_int = Int64[1,2,3,4,5]

type_float = Float64[1,2,3,4,5] #the output will be float values

type_string = String["This", "is", "Julia"]

array_2d = [1 2 3 4; 5 6 7 8]
println(array_2d)

vector_1 = [1 2 3 4 5]

array_rand = rand(5)
println(array_rand)

array_rand2 = rand(3,3)
println(array_rand2)

#Creating Ranges in Julia

println(collect(1:10))

println(collect(1.5:.5:5.5))
println(collect(0:20:100))

c1 = collect(100:-20:0)
println(c1) #this works like an array so any function applied to a normal array works here
println(c1[3])
println(c1[end])
println(c1[end-1])
println(c1[2:5])
println(c1[[2,3,4,5]])
println(c1[2:end])

#Tuples in Julia

tuple_1 = (1,2,3,4,5)
println(tuple_1) #reminder that tuples are immutables, its values cannot be changed

tuple_2 = ((1, 3), (2, 5))
println(tuple_2)

println(tuple_2[2][1])

grades = (Science = (90,100), Maths = (95, 100), English = (100,100))
println(grades)

println(grades.Science)

grades_2 = (History = (90,100), Arts = (95, 100))

grades_total = merge(grades,grades_2)
println(grades_total)

#Working with Dictionaries in Julia
cars = Dict("car_1" => 1000, "car_2" => 2000, "car_3" => 3000)
println(cars)
println(cars["car_1"])

cars_2 = Dict(:car_1 => 1000, :car_2 => 2000, :car_3 => 3000)
println(cars_2)
println(cars_2[:car_1])

println(haskey(cars_2, :car_1))

delete!(cars_2, :car_1)
println(haskey(cars_2, :car_1))

println(keys(cars))
println(values(cars))

cars_3 = merge(cars, cars_2)
println(cars_3)

#Working with Sets in Julia
sports_brands = Set(["Adidas", "Nike", "Puma", "Rebook"])
println(sports_brands)

println(in("Chabelo",sports_brands))

sports_brands_mexico = Set(["Adidas", "Nike", "Chabelo"])

sports_brands_total = union(sports_brands, sports_brands_mexico) #Creates a new list without duplicates
println(sports_brands_total)

sports_brands_inner = intersect(sports_brands, sports_brands_mexico)
println(sports_brands_inner)

sports_brands_outer_1 = setdiff(sports_brands, sports_brands_mexico)
println(sports_brands_outer_1)

sports_brands_outer_2 = setdiff(sports_brands_mexico, sports_brands)
println(sports_brands_outer_2)

push!(sports_brands, "Chabelo")
println(sports_brands)

#Date Operations in Julia

#three main datatypes for datetime:
#Dates.Time
#Dates.Date
#Dates.Datetime

#importing
using Dates

println(now())
println(today())

birthdate = Date(2000,4,29) #yyyy,mm,dd format to define a date
DateTime(2000,4,29,10,15,25) #yyyy,mm,dd,HH,MM,SS

println(now(UTC))
println(year(birthdate))
println(year(now()))
print(hour(now()))
println(dayofweek(birthdate))
println(dayname(birthdate))
println(dayofquarter(birthdate))
println(daysinmonth(birthdate))
println(today() - birthdate)
println(today() + Month(5))

date_format = DateFormat("dd-mm-yyyy") #adjust date format
println(Dates.format(birthdate,date_format))

#Conditional Operators in Julia