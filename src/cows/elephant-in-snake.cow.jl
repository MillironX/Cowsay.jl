"""
    function elephant_in_snake()

Do we need to explain this?

# Example

```jldoctests
julia> cowsay("Help!", cow=Cowsay.elephant_in_snake)
 _______
< Help! >
 -------
   \\
    \\              ....
           ........    .
          .            .
         .             .
.........              .......
..............................

Elephant inside ASCII snake

```
"""
function elephant_in_snake(;eyes="oo", tongue="  ", thoughts="\\")
the_cow = """
   $thoughts
    $thoughts              ....
           ........    .
          .            .
         .             .
.........              .......
..............................

Elephant inside ASCII snake
"""
return the_cow
end
