hello = "Hello, World!"
println(hello)

#Names support UTF-8 encoding
🦍 = "Gorilla"
println(🦍)

circ = 10 * 2π

#It's good at string parsing
str = "Circumference: $circ"

occursin(r"^\s*(?:#|$)", str)

#Multiple expressions on a single line
(x = 1; y = 2; x + y)

#defining a function
function  Σ(a,b)
    a+b
end

#shortening a function to a single line
Σ(a,b) = a+b

#functions can be passed to another one
Σ = (a,b) -> a + b
callme(Σ)

#redefining functions to have several methods
fun(x) = print("One method")

fun(x::Float64) = print("Another method")

fun(x::Int) = print("Yet another method for the same function")

fun(23) #dispatch Int method

#passing a type as a parameter and perform logic on the type itself
fun(x::T, y::T) where {T} = print("Mathing types")

#Julia isn't a OOP language but it supports composite types with struct
struct Object
    attribute::Float64
    characteristic::Int
    description
end

#array support
arr1D = [1, 2, 3, 4]
arr2D = [1 2; 3 4]
matrix = zeros(Int8, 3, 3)

#asynchronous computing
t = @task begin; sleep(5); println("Task done"); end

#distributed computing
r = remotecall(rand, 2, 2, 2)

s = @spawnat 2 1 .+ fetch(r)

fetch (s)