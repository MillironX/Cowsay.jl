"""
    function bunny()

A cute little wabbit

# Example

```jldoctest
julia> cowsay("Look at that tortoise way off in the distance.", cow=Cowsay.bunny)
 ______________________________________
/ Look at that tortoise way off in the \\
\\ distance.                            /
 --------------------------------------
  \\
   \\   \\
        \\ /\\
        ( )
      .( o ).

```
"""
function bunny(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
  $thoughts
   $thoughts   \\
        \\ /\\
        ( )
      .( o ).
"""
return the_cow
end
