using Cowsay
using Test
using Documenter

DocMeta.setdocmeta!(Cowsay, :DocTestSetup, :(using Cowsay); recursive=true)

@testset verbose = true "cowsay" begin
    @testset "Doctests" begin
        doctest(Cowsay)
    end
end
