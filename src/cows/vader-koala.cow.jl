"""
    function vader_koala

Another canonical koala?

# Example

```jldoctest
julia> cowsay("Luke, you are my joey!", cow=Cowsay.vader_koala)
 ________________________
< Luke, you are my joey! >
 ------------------------
   \\
    \\        .
     .---.  //
    Y|o o|Y//
   /_(i=i)K/
   ~()~*~()~
    (_)-(_)

     Darth
     Vader
     koala
```
"""
function vader_koala(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
   $thoughts
    $thoughts        .
     .---.  //
    Y|o o|Y//
   /_(i=i)K/
   ~()~*~()~
    (_)-(_)

     Darth
     Vader
     koala
"""
return the_cow
end
