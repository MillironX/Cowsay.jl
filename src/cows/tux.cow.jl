##

##
"""
    function tux()

TuX
(c) pborys@p-soft.silesia.linux.org.pl

# Example
```jldoctest
julia> cowsay("Talk is cheap. Show me the code.", cow=Cowsay.tux)
 __________________________________
< Talk is cheap. Show me the code. >
 ----------------------------------
   \\
    \\
        .--.
       |o_o |
       |:_/ |
      //   \\ \\
     (|     | )
    /'\\_   _/`\\
    \\___)=(___/
```
"""
function tux(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
   $thoughts
    $thoughts
        .--.
       |o_o |
       |:_/ |
      //   \\ \\
     (|     | )
    /'\\_   _/`\\
    \\___)=(___/

"""
return the_cow
end
