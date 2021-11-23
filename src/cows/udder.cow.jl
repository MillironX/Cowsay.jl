"""
    function udder()

The cow from a file called cow-n-horn, artist unknown.

# Example

```jldoctest
julia> cowsay("Milking time!", cow=Cowsay.udder)
 _______________
< Milking time! >
 ---------------
  \\
   \\    (__)
        o o\\
       ('') \\---------
          \\           \\
           |          |\\
           ||---(  )_|| *
           ||    UU  ||
           ==        ==
```
"""
function udder(;eyes="oo", tongue="  ", thoughts="\\")
eye1 = first(eyes)
eye2 = last(eyes)
botheyes = string(eye1, " ", eye2)
the_cow =
"""
  $thoughts
   $thoughts    (__)
        $botheyes\\
       ('') \\---------
        $tongue\\           \\
           |          |\\
           ||---(  )_|| *
           ||    UU  ||
           ==        ==
"""
return the_cow
end
