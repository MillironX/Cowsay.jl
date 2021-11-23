##
## MOOfasa.
##
"""
    function moofasa()

MOOfasa

# Example
```jldoctest
julia> cowsay("It's the circle of life", cow=Cowsay.moofasa)
 _________________________
< It's the circle of life >
 -------------------------
       \\    ____
        \\  /    \\
          | ^__^ |
          | (oo) |______
          | (__) |      )\\/\\
           \\____/|----w |
                ||     ||

             Moofasa
```
"""
function moofasa(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
       $thoughts    ____
        $thoughts  /    \\
          | ^__^ |
          | ($eyes) |______
          | (__) |      )\\/\\
           \\____/|----w |
                ||     ||

             Moofasa
"""
return the_cow
end
