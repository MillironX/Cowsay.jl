##
## The non-flaming sheep.
##
"""
    function sheep()

The non-flaming sheep.

# Example
```jldoctest
julia> cowsay("Baa", cow=Cowsay.sheep)
 _____
< Baa >
 -----
  \\
   \\
       __
      UooU\\.'@@@@@@`.
      \\__/(@@@@@@@@@@)
           (@@@@@@@@)
           `YY~~~~YY'
            ||    ||
```
"""
function sheep(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
  $thoughts
   $thoughts
       __
      U$(eyes)U\\.'@@@@@@`.
      \\__/(@@@@@@@@@@)
           (@@@@@@@@)
           `YY~~~~YY'
            ||    ||
"""
return the_cow
end
