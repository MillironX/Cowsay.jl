"""
    function kitty()

A kitten of sorts, I think

# Example

```jldoctest
julia> cowsay("Meow", cow=Cowsay.kitty)
 ______
< Meow >
 ------
     \\
      \\
       ("`-'  '-/") .___..--' ' "`-._
         ` *_ *  )    `-.   (      ) .`-.__. `)
         (_Y_.) ' ._   )   `._` ;  `` -. .-'
      _.. `--'_..-_/   /--' _ .' ,4
   ( i l ),-''  ( l i),'  ( ( ! .-'
```
"""
function kitty(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
     $thoughts
      $thoughts
       ("`-'  '-/") .___..--' ' "`-._
         ` *_ *  )    `-.   (      ) .`-.__. `)
         (_Y_.) ' ._   )   `._` ;  `` -. .-'
      _.. `--'_..-_/   /--' _ .' ,4
   ( i l ),-''  ( l i),'  ( ( ! .-'
"""
return the_cow
end
