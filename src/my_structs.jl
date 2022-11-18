#this is an immutable struct
struct Point
    x::Float64
    y::Float64
end

#this is a mutable struct
struct Point2
    x::Float64
    y::Float64
end

#and this defines a parametric type
#see https://docs.julialang.org/en/v1/manual/types/
struct Point3{T}
    x::T
    y::T
end

#using the Point3 type above, we can define a method where 
#we accept arguments that are of type T
#read the below as 'point add takes a type of Point3 that has
#some of its values of type T, where T is a subset of real numbers
function point_add(p::Point3{T} where T <:Real)
    p.x + p.y
end