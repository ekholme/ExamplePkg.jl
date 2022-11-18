module ExamplePkg

#include other files
include("addition.jl")
include("my_structs.jl")

#export the function
export my_add
export Point3
export point_add

end
