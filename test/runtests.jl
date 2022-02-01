using Cowsay
using Test
using Documenter

DocMeta.setdocmeta!(Cowsay, :DocTestSetup, :(using Cowsay); recursive=true)

@testset "cowsay" begin
    @testset "Doctests" begin
        doctest(Cowsay)
    end
    @testset "Balloon Formation" begin
        # One-liner say balloon
        @test Cowsay.sayballoon("One line") == " __________\n< One line >\n ----------\n"

        # Two-liner say balloon
        @test Cowsay.sayballoon("One line\nTwo line") == " __________\n/ One line \\\n\\ Two line /\n ----------\n"

        # Multi-liner say balloon
        @test Cowsay.sayballoon("One line\nTwo line\nRed line\nBlue line") == " ___________\n/ One line  \\\n| Two line  |\n| Red line  |\n\\ Blue line /\n -----------\n"
    end
    @testset "IO Funkiness" begin
        # Cowsay with io redirection
        @test_warn cowsaid("Moo") cowsay(stderr, "Moo")

        # Cowthink with io redirection
        @test_warn cowthunk("Moo") cowthink(stderr, "Moo")
    end
end
