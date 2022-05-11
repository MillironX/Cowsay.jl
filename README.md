# Cowsay.jl

```plaintext
 ___________________
< Cowsay for Juila! >
 -------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://millironx.com/Cowsay.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://millironx.com/Cowsay.jl/dev)
[![Build Status](https://github.com/MillironX/Cowsay.jl/workflows/CI/badge.svg)](https://github.com/MillironX/Cowsay.jl/actions)
[![Coverage](https://codecov.io/gh/MillironX/Cowsay.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/MillironX/Cowsay.jl)

A talking cow library for Julia, based on the [Fedora release of
cowsay](https://src.fedoraproject.org/rpms/cowsay).

## Installation

You can install straight from the [Julia REPL]. Press `]` to enter [pkg mode],
then:

```julia
add Cowsay
```

## Usage

Complete usage info can be found in [the documentation]. Cowsay.jl exports two
functions: `cowsay` and `cowthink`, which print an ASCII cow saying or thinking
a message, respectively.

```julia-repl
julia> using Cowsay
julia> cowsay("Bessie the heifer\nthe queen of all the cows.")
 ____________________________
/ Bessie the heifer:         \
\ the queen of all the cows. /
 ----------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

julia> cowthink("The farmers who have no livestock,\ntheir lives simply aren't the best")
 ____________________________________
( The farmers who have no livestock, )
( their lives simply aren't the best )
 ------------------------------------
        o   ^__^
         o  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

If you want to use talking cows in your program, use the `cowsaid` and
`cowthunk` functions to get strings of the cow art.

```julia-repl
julia> @info string("\n", cowsaid("And the longhorns lowed him a welcome\nAs a new voice cried from the buckboard"))
┌ Info:
│  _________________________________________
│ / And the longhorns lowed him a welcome   \
│ \ As a new voice cried from the buckboard /
│  -----------------------------------------
│         \   ^__^
│          \  (oo)\_______
│             (__)\       )\/\
│                 ||----w |
└                 ||     ||
```

There are also plenty of [unexported Cowfiles] that you can use to customize
your art.

```julia-repl
julia> cowsay("This heifer must be empty\n'Cuz she ain't puttin' out", cow=Cowsay.udder)
 ____________________________
/ This heifer must be empty  \
\ 'Cuz she ain't puttin' out /
 ----------------------------
  \
   \    (__)
        o o\
       ('') \---------
          \           \
           |          |\
           ||---(  )_|| *
           ||    UU  ||
           ==        ==
```

You can also change the eyeballs and tongue of your cow.

```julia-repl
julia> cowsay("You better watch your step\nwhen you know the chips are down!", tongue=" U", eyes="00")
 ___________________________________
/ You better watch your step        \
\ when you know the chips are down! /
 -----------------------------------
        \   ^__^
         \  (00)\_______
            (__)\       )\/\
              U ||----w |
                ||     ||
```

And even change its emotional or physical state using modes.

```julia-repl
julia> cowsay("He mooed we must fight\nEscape or we'll die\nCows gathered around\n'Cause the steaks were so high"; dead=true)
 ________________________________
/ He mooed we must fight         \
| Escape or we'll die            |
| Cows gathered around           |
\ 'Cause the steaks were so high /
 --------------------------------
        \   ^__^
         \  (xx)\_______
            (__)\       )\/\
             U  ||----w |
                ||     ||
```

[Julia REPL]: https://docs.julialang.org/en/v1/manual/getting-started/
[pkg mode]: https://docs.julialang.org/en/v1/stdlib/Pkg/
[the documentation]: https://millironx.com/Cowsay.jl/stable
[unexported Cowfiles]: https://millironx.com/Cowsay.jl/stable/cows/
