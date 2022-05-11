module Cowsay

using TextWrap

export cowsay
export cowthink
export cowsaid
export cowthunk

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
    cowsay([io,] message::AbstractString; kwargs...)
    cowthink([io,] message::AbstractString; kwargs...)

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
- `wrap::Int=40`: The number of characters at which to wrap `message` to a new line
- `nowrap::Bool=false`: Don't perform text wrapping on `message`

## Cow appearance Keywords
- `borg::Bool=false`: Initiates Borg mode
- `dead::Bool=false`: Causes the cow to appear dead
- `greedy::Bool=false`: Invokes greedy mode
- `paranoid::Bool=false`: Causes a state of paranoia to come over the cow
- `stoned::Bool=false`: Makes the cow appear thoroughly stoned
- `tired::Bool=false`: Yields a tired cow
- `wired::Bool=false`: Somewhat the opposite of `tired`, and initiates wired mode
- `young::Bool=false`: Brings on the cow's youthful appearance

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
function cowsay(message::AbstractString; kwargs...)
    cowsay(stdout, message; kwargs...)
end

function cowsay(io::IO, message::AbstractString; kwargs...)
    println(io, cowsaid(message; kwargs...))
end

"""
    cowthink([io,] message::AbstractString; kwargs...)

Print an ASCII picture of a cow thinking `message`

See [`cowsay`](@ref)
"""
function cowthink(message::AbstractString; kwargs...)
    cowthink(stdout, message; kwargs...)
end

function cowthink(io::IO, message::AbstractString; kwargs...)
    println(io, cowthunk(message; kwargs...))
end

"""
    cowsaid(message::AbstractString; kwargs...)
    cowthunk(message::AbstractString; kwargs...)

Constructs cow art and returns it as a string instead of printing it. See [`cowsay`](@ref)
for implementation details.

# Example

```jldoctest
julia> cowsaid("Have you mooed today?")
" _______________________\\n< Have you mooed today? >\\n -----------------------\\n        \\\\   ^__^\\n         \\\\  (oo)\\\\_______\\n            (__)\\\\       )\\\\/\\\\\\n                ||----w |\\n                ||     ||\\n"
```

```jldoctest
julia> cowthunk("Have I mooed today?")
" _____________________\\n( Have I mooed today? )\\n ---------------------\\n        o   ^__^\\n         o  (oo)\\\\_______\\n            (__)\\\\       )\\\\/\\\\\\n                ||----w |\\n                ||     ||\\n"
```
"""
function cowsaid(message::AbstractString; kwargs...)
    return cowmoo(message, :say; kwargs...)
end

"""
    cowthunk(message::AbstractString; kwargs...)

Construct art of a cow thinking `message`.

See [`cowsaid`](@ref) and [`cowsay`](@ref)
"""
function cowthunk(message::AbstractString; kwargs...)
    return cowmoo(message, :think; kwargs...)
end

"""
    cowmoo(message::AbstractString, mode, kwargs...)

Converts `message` into either saying or thinking art based on the value of `mode`. All of
the default values for `kwargs` for pretty much every other function live here. See
[`cowsay`](@ref) for their descriptions.
"""
function cowmoo(message::AbstractString, mode; kwargs...)
    cow = dict_or_default(kwargs, :cow, Cowsay.default)
    eyes = dict_or_default(kwargs, :eyes, "oo")
    tongue = dict_or_default(kwargs, :tongue, "  ")
    wrap = dict_or_default(kwargs, :wrap, 40)
    nowrap = dict_or_default(kwargs, :nowrap, false)

    eyes, tongue = construct_face!(eyes, tongue; kwargs...)

    # Default to 'say' mode
    if mode == :think
        balloon = thinkballoon
        thoughts = "o"
    else
        balloon = sayballoon
        thoughts = "\\"
    end

    wrapped_message = !nowrap ? TextWrap.wrap(message, width=wrap, replace_whitespace=false) : message
    speechbubble = balloon(wrapped_message)

    return string(speechbubble, cow(eyes=eyes, tongue=tongue, thoughts=thoughts))
end

function construct_face!(eyes, tongue; kwargs...)
    borg = dict_or_default(kwargs, :borg, false)
    dead = dict_or_default(kwargs, :dead, false)
    greedy = dict_or_default(kwargs, :greedy, false)
    paranoid = dict_or_default(kwargs, :paranoid, false)
    stoned = dict_or_default(kwargs, :stoned, false)
    tired = dict_or_default(kwargs, :tired, false)
    wired = dict_or_default(kwargs, :wired, false)
    young = dict_or_default(kwargs, :young, false)

    if borg
        eyes = "=="
    end

    if dead
        eyes = "xx"
        tongue = "U "
    end

    if greedy
        eyes = "\$\$"
    end

    if paranoid
        eyes = "@@"
    end

    if stoned
        eyes = "**"
        tongue = "U "
    end

    if tired
        eyes = "--"
    end

    if wired
        eyes = "OO"
    end

    if young
        eyes = ".."
    end

    return eyes, tongue
end

"""
    dict_or_default(dict, key, value)

If `key` is present in `dict`, then return `dict[key]`, otherwise return `value`

# Example
```jldoctest
julia> dict = Dict(:holstein => "lotsa milk", :jersey => "butterfat", :shorthorn => "worthless");

julia> Cowsay.dict_or_default(dict, :holstein, "fluid")
"lotsa milk"

julia> Cowsay.dict_or_default(dict, :brown_swiss, "cheese")
"cheese"
```
"""
function dict_or_default(dict, key, value)
    if haskey(dict, key)
        return dict[key]
    else
        return value
    end
end

"""
    function sayballoon(message::AbstractString)

Creates the balloon portion of the art for [`cowsay`](@ref)

See also [`cowsay`](@ref), [`thinkballoon`](@ref)
"""
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
            for i = 2:nlines-1
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

"""
    function thinkballoon(message::AbstractString)

Creates the balloon portion of the art for [`cowthink`](@ref)

See also [`cowthink`](@ref), [`sayballoon`](@ref)
"""
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
