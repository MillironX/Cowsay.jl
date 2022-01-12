module Cowsay

export cowsay
export cowthink

include("cows/blowfish.cow.jl")
include("cows/bunny.cow.jl")
include("cows/cower.cow.jl")
include("cows/default.cow.jl")
include("cows/dragon-and-cow.cow.jl")
include("cows/dragon.cow.jl")
include("cows/elephant-in-snake.cow.jl")
include("cows/elephant.cow.jl")
include("cows/eyes.cow.jl")
include("cows/flaming-sheep.cow.jl")
include("cows/fox.cow.jl")
include("cows/kitty.cow.jl")
include("cows/koala.cow.jl")
include("cows/mech-and-cow.cow.jl")
include("cows/meow.cow.jl")
include("cows/moofasa.cow.jl")
include("cows/moose.cow.jl")
include("cows/mutilated.cow.jl")
include("cows/sheep.cow.jl")
include("cows/skeleton.cow.jl")
include("cows/small.cow.jl")
include("cows/stegosaurus.cow.jl")
include("cows/supermilker.cow.jl")
include("cows/surgery.cow.jl")
include("cows/three-eyes.cow.jl")
include("cows/turkey.cow.jl")
include("cows/turtle.cow.jl")
include("cows/tux.cow.jl")
include("cows/udder.cow.jl")
include("cows/vader-koala.cow.jl")
include("cows/vader.cow.jl")
include("cows/www.cow.jl")

"""
    cowsay(message::AbstractString; kwargs...)
    cowthink(message::AbstractString; kwargs...)

Print an ASCII picture of a cow saying/thinking `message`

# Arguments
- `message::AbstractString`: Tell the cow what to say

# Keywords
- `cow=default`: Specify a particular function handle to print the ASCII art. See below for
    more details on what constitutes a valid function handle.
- `eyes::AbstractString="oo"`: A two-character string to be drawn in for the eyes. Not all
    cowfiles support this, though.
- `tongue::AbstractString="  "`: A two-character string to be drawn in for the tongue. Not
    all cowfiles support this.

# Example
```jldoctest
julia> cowsay("Have you mooed today?")
 _______________________
< Have you mooed today? >
 -----------------------
        \\   ^__^
         \\  (oo)\\_______
            (__)\\       )\\/\\
                ||----w |
                ||     ||

julia> cowthink("Have I mooed today?")
 _____________________
( Have I mooed today? )
 ---------------------
        o   ^__^
         o  (oo)\\_______
            (__)\\       )\\/\\
                ||----w |
                ||     ||
```
"""
function cowsay(message::AbstractString; cow=default, eyes="oo", tongue="  ")
    balloon = sayballoon(message)
    println(string(balloon, cow(eyes=eyes, tongue=tongue)))
end

function cowthink(message::AbstractString; cow=default, eyes="oo", tongue="  ")
    balloon = thinkballoon(message)
    println(string(balloon, cow(eyes=eyes, tongue=tongue, thoughts="o")))
end

function sayballoon(message::AbstractString)
    messagelines = split(message, "\n")
    nlines = length(messagelines)

    linelength = max(length.(messagelines)...)
    paddinglength = linelength + 2

    if nlines == 1
        balloon = string(
            " ",
            repeat("_", paddinglength),
            "\n< ",
            message,
            " >\n ",
            repeat("-", paddinglength),
            "\n"
        )
    else
        balloon = string(
            " ",
            repeat("_", paddinglength),
            "\n/ ",
            rpad(messagelines[1], linelength),
            " \\\n"
        )
        if nlines > 2
            for i=2:nlines-1
                balloon = string(
                    balloon,
                    "| ",
                    rpad(messagelines[i], linelength),
                    " |\n"
                )
            end
        end
        balloon = string(
            balloon,
            "\\ ",
            rpad(messagelines[end], linelength),
            " /\n ",
            repeat("-", paddinglength),
            "\n"
        )
    end

    return balloon

end #function

function thinkballoon(message::AbstractString)
    messagelines = split(message, "\n")
    nlines = length(messagelines)

    linelength = max(length.(messagelines)...)
    paddinglength = linelength + 2

        balloon = string(
            " ",
            repeat("_", paddinglength),
            "\n"
        )
        for i in 1:nlines
            balloon = string(
                balloon,
                "( ",
                rpad(messagelines[i], linelength),
                " )\n"
            )
        end #for
        balloon = string(
            balloon,
            " ",
            repeat("-", paddinglength),
            "\n"
        )

    return balloon
end #function


end
