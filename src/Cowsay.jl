module Cowsay

export cowsay

include("cows/default.cow.jl")
include("cows/udder.cow.jl")
include("cows/vader-koala.cow.jl")
include("cows/vader.cow.jl")
include("cows/www.cow.jl")

"""
    cowsay(message::AbstractString)

Prints a cow saying `message` as unwrapped text.
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
