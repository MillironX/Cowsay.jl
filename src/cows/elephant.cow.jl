"""
    function elephant()

An elephant out and about

# Example
```jldoctest
julia> cowsay("Toot!", cow=Cowsay.elephant)
 _______
< Toot! >
 -------
 \\     /\\  ___  /\\
  \\   // \\/   \\/ \\\\
     ((    O O    ))
      \\\\ /     \\ //
       \\/  | |  \\/
        |  | |  |
        |  | |  |
        |   o   |
        | |   | |
        |m|   |m|
```
"""
function elephant(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
 $thoughts     /\\  ___  /\\
  $thoughts   // \\/   \\/ \\\\
     ((    O O    ))
      \\\\ /     \\ //
       \\/  | |  \\/
        |  | |  |
        |  | |  |
        |   o   |
        | |   | |
        |m|   |m|
"""
return the_cow
end
