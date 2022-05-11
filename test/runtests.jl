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
    @testset "Word Wrapping" begin
        # Long text, default wrap
        @test cowsaid("Rollin' down a long highway out through New Mexico driftin' down to Santa Fe to ride a bull in a rodeo") == " _________________________________________\n/ Rollin' down a long highway out through \\\n| New Mexico driftin' down to Santa Fe to |\n\\ ride a bull in a rodeo                  /\n -----------------------------------------\n        \\   ^__^\n         \\  (oo)\\_______\n            (__)\\       )\\/\\\n                ||----w |\n                ||     ||\n"

        # Long text, no wrap
        @test cowsaid("Rollin' down a long highway out through New Mexico driftin' down to Santa Fe to ride a bull in a rodeo", nowrap=true) == " ________________________________________________________________________________________________________\n< Rollin' down a long highway out through New Mexico driftin' down to Santa Fe to ride a bull in a rodeo >\n --------------------------------------------------------------------------------------------------------\n        \\   ^__^\n         \\  (oo)\\_______\n            (__)\\       )\\/\\\n                ||----w |\n                ||     ||\n"

        # Long text, conflicting wrap instructions (nowrap should win)
        @test cowsaid("Rollin' down a long highway out through New Mexico driftin' down to Santa Fe to ride a bull in a rodeo", wrap=80, nowrap=true) == " ________________________________________________________________________________________________________\n< Rollin' down a long highway out through New Mexico driftin' down to Santa Fe to ride a bull in a rodeo >\n --------------------------------------------------------------------------------------------------------\n        \\   ^__^\n         \\  (oo)\\_______\n            (__)\\       )\\/\\\n                ||----w |\n                ||     ||\n"

        # Long text, different wrap amount
        @test cowsaid("Rollin' down a long highway out through New Mexico driftin' down to Santa Fe to ride a bull in a rodeo", wrap=80) == " _________________________________________________________________________________\n/ Rollin' down a long highway out through New Mexico driftin' down to Santa Fe to \\\n\\ ride a bull in a rodeo                                                          /\n ---------------------------------------------------------------------------------\n        \\   ^__^\n         \\  (oo)\\_______\n            (__)\\       )\\/\\\n                ||----w |\n                ||     ||\n"
    end
    @testset "Cow Modes" begin
        @test Cowsay.construct_face!("oo", "  ") == ("oo", "  ")
        @test Cowsay.construct_face!("oo", "  "; borg=true) == ("==", "  ")
        @test Cowsay.construct_face!("oo", "  "; dead=true) == ("xx", "U ")
        @test Cowsay.construct_face!("oo", "  "; greedy=true) == ("\$\$", "  ")
        @test Cowsay.construct_face!("oo", "  "; paranoid=true) == ("@@", "  ")
        @test Cowsay.construct_face!("oo", "  "; stoned=true) == ("**", "U ")
        @test Cowsay.construct_face!("oo", "  "; tired=true) == ("--", "  ")
        @test Cowsay.construct_face!("oo", "  "; wired=true) == ("OO", "  ")
        @test Cowsay.construct_face!("oo", "  "; young=true) == ("..", "  ")
    end
end
