##

##
"""
    function skeleton()

This 'Scowleton' brought to you by one of
{appel,kube,rowe}@csua.berkeley.edu

# Example
```jldoctest
julia> cowsay("All T-Bone, no steak", cow=Cowsay.skeleton)
 ______________________
< All T-Bone, no steak >
 ----------------------
          \\      (__)
           \\     /oo|
            \\   (_"_)*+++++++++*
                   //I#\\\\\\\\\\\\\\\\I\\
                   I[I|I|||||I I `
                   I`I'///'' I I
                   I I       I I
                   ~ ~       ~ ~
                     Scowleton
```
"""
function skeleton(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
          $thoughts      (__)
           $thoughts     /$eyes|
            $thoughts   (_"_)*+++++++++*
                   //I#\\\\\\\\\\\\\\\\I\\
                   I[I|I|||||I I `
                   I`I'///'' I I
                   I I       I I
                   ~ ~       ~ ~
                     Scowleton
"""
return the_cow
end
