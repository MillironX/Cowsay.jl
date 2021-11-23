##
## A cowering cow
##
"""
    function cower()

A cowering cow

# Example

```jldoctest
julia> cowsay("Is it safe to come out yet?", cow=Cowsay.cower)
 _____________________________
< Is it safe to come out yet? >
 -----------------------------
     \\
      \\
        ,__, |    |
        (oo)\\|    |___
        (__)\\|    |   )\\_
             |    |_w |  \\
             |    |  ||   *

             Cower....

```
"""
function cower(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
     $thoughts
      $thoughts
        ,__, |    |
        (oo)\\|    |___
        (__)\\|    |   )\\_
             |    |_w |  \\
             |    |  ||   *

             Cower....
"""
return the_cow
end
