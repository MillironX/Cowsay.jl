##
## The flaming sheep, contributed by Geordan Rosario (geordan@csua.berkeley.edu)
##
"""
    function flaming_sheep()

The flaming sheep, contributed by Geordan Rosario (geordan@csua.berkeley.edu)

# Example

```jldoctest
julia> cowsay("Baaahhh!", cow=Cowsay.flaming_sheep)
 __________
< Baaahhh! >
 ----------
  \\            .    .     .
   \\      .  . .     `  ,
    \\    .; .  : .' :  :  : .
     \\   i..`: i` i.i.,i  i .
      \\   `,--.|i |i|ii|ii|i:
           UooU\\.'@@@@@@`.||'
           \\__/(@@@@@@@@@@)'
                (@@@@@@@@)
                `YY~~~~YY'
                 ||    ||
```
"""
function flaming_sheep(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
  $thoughts            .    .     .
   $thoughts      .  . .     `  ,
    $thoughts    .; .  : .' :  :  : .
     $thoughts   i..`: i` i.i.,i  i .
      $thoughts   `,--.|i |i|ii|ii|i:
           U$(eyes)U\\.'@@@@@@`.||'
           \\__/(@@@@@@@@@@)'
                (@@@@@@@@)
                `YY~~~~YY'
                 ||    ||
"""
return the_cow
end
