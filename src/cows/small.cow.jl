"""
    function small()

A small cow, artist unknown

# Example
```jldoctest
julia> cowsay("A calf", cow=Cowsay.small)
 ________
< A calf >
 --------
       \\   ,__,
        \\  (..)____
           (__)    )\\
              ||--|| *
```
"""
function small(;eyes="oo", tongue="  ", thoughts="\\")
if eyes == "oo"
    eyes = ".."
end
the_cow =
"""
       $thoughts   ,__,
        $thoughts  ($eyes)____
           (__)    )\\
            $tongue||--|| *
"""
return the_cow
end
