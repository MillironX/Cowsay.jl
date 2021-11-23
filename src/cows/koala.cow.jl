"""
    function koala

From the canonical koala collection

# Example

```jldoctest
julia> cowsay("Welcome to Down Under", cow=Cowsay.koala)
 _______________________
< Welcome to Down Under >
 -----------------------
  \\
   \\
       ___
     {~._.~}
      ( Y )
     ()~*~()
     (_)-(_)
```
"""
function koala(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
  $thoughts
   $thoughts
       ___
     {~._.~}
      ( Y )
     ()~*~()
     (_)-(_)
"""
return the_cow
end
