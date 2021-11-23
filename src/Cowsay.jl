module Cowsay

export cowsay

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
include("cows/udder.cow.jl")
include("cows/vader-koala.cow.jl")
include("cows/vader.cow.jl")
include("cows/www.cow.jl")

"""
    cowsay(message::AbstractString; kwargs...)

Print an ASCII picture of a cow saying `message`

# Arguments
- `message::AbstractString`: Tell the cow what to say

# Keywords
- `cow=default`: Specify a particular function handle to print the ASCII art. See below for
    more details on what constitutes a valid function handle.
- `eyes::AbstractString="oo"`: A two-character string to be drawn in for the eyes. Not all
    cowfiles support this, though.
- `tongue::AbstractString="  "`: A two-character string to be drawn in for the tongue. Not
    all cowfiles support this.

---

# Making a cow function

The original cowsay used Perl scripts (called 'cowfiles') to allow for creating more ASCII
cow art. Cowsay.jl uses Julia functions, instead. In order to be usable by `Cowsay.cowsay`,
a cow function **must**

1. Take the correct arguments

    The function must take three (3)
    [keyword arguments](https://docs.julialang.org/en/v1/manual/functions/#Keyword-Arguments)
    of the form

    - `eyes::AbstractString="oo"`
    - `tongue::AbstractString="  "`
    - `thoughts::AbstractString="\\"`

    When drawing the cow artwork, you may then use the variables `eyes` in place of the
    eyes, `tongue` in place of the tongue, and `thoughts` in place of the speech ballon
    trail. Use of these variables in constructing the cow is optional (but makes the use of
    your cow function far more fun), but all three arguments must be present in the
    signature, regardless.

2. Return a string

    The cow artwork must be returned from the function as a string. This is distinctly
    different from how the original cowsay modified the `\$the_cow` variable.

## Helpful hints for making cow functions

1. Include one function per file, with the extension `.cow.jl`
2. Do not indent within a `.cow.jl` file to better see the artwork
3. Make use of string literals (`\"""`) and string interpolation (`\$`) to build the cow
    art
4. Be sure to escape backslashes (`\\`) and dollar signs (`\$`) within your artwork
5. Split the `eyes` variable to get individual left- and right-eye when creating large cow
    functions
6. Have fun!
"""
function cowsay(message::AbstractString; cow=default, eyes="oo", tongue="  ")
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

println(string(balloon, cow(eyes=eyes, tongue=tongue)))
end


end
