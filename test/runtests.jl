using ExamplePkg
using Test

#we can test with the @test macro
#and define a test set with the @testset macro
@testset "ExamplePkg.jl" begin
    @test my_add(1, 2) == 3

    z = Point3(1, 2)
    @test point_add(z) == 3

end
#we can run this by entering the package repl and running
#test [pkgName]