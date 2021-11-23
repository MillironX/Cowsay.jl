##
## A cow operation, artist unknown
##
"""
    function surgery()

A cow operation, artist unknown

# Example
```jldoctest
julia> cowsay("Removing the last bit of net wrap now", cow=Cowsay.surgery)
 _______________________________________
< Removing the last bit of net wrap now >
 ---------------------------------------
          \\           \\  /
           \\           \\/
               (__)    /\\
               (oo)   O  O
               _\\/_   //
         *    (    ) //
          \\  (\\\\    //
           \\(  \\\\    )
            (   \\\\   )   /\\
  ___[\\______/^^^^^^^\\__/) o-)__
 |\\__[=======______//________)__\\
 \\|_______________//____________|
     |||      || //||     |||
     |||      || @.||     |||
      ||      \\/  .\\/      ||
                 . .
                '.'.`

            COW-OPERATION
```
"""
function surgery(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
          $thoughts           \\  /
           $thoughts           \\/
               (__)    /\\
               ($eyes)   O  O
               _\\/_   //
         *    (    ) //
          \\  (\\\\    //
           \\(  \\\\    )
            (   \\\\   )   /\\
  ___[\\______/^^^^^^^\\__/) o-)__
 |\\__[=======______//________)__\\
 \\|_______________//____________|
     |||      || //||     |||
     |||      || @.||     |||
      ||      \\/  .\\/      ||
                 . .
                '.'.`

            COW-OPERATION
"""
return the_cow
end
