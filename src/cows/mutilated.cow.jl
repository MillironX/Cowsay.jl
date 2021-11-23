"""
    function mutilated()

A mutilated cow, from aspolito@csua.berkeley.edu

# Example
```jldoctest
julia> cowsay("I wouldn't have been so eager to make head cheese...", cow=Cowsay.mutilated)
 ______________________________________________________
< I wouldn't have been so eager to make head cheese... >
 ------------------------------------------------------
       \\   \\_______
 v__v   \\  \\   O   )
 (oo)      ||----w |
 (__)      ||     ||  \\/\\
```
"""
function mutilated(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
       $thoughts   \\_______
 v__v   $thoughts  \\   O   )
 ($eyes)      ||----w |
 (__)      ||     ||  \\/\\
  $tongue
"""
return the_cow
end
