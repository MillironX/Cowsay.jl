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
    different from how the original cowsay modified the `$the_cow` variable.

## Helpful hints for making cow functions

1. Include one function per file, with the extension `.cow.jl`
2. Do not indent within a `.cow.jl` file to better see the artwork
3. Make use of string literals (`"""`) and string interpolation (`$`) to build the cow
    art
4. Be sure to escape backslashes (`\`) and dollar signs (`$`) within your artwork
5. When converting from Perl cowfiles, _unescape_ at symbols (`@`), as these are
   **not** special in Julia strings
6. Split the `eyes` variable to get individual left- and right-eye when creating large cow
    functions
7. Have fun!
