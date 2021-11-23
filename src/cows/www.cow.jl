"""
    function www()

A cow wadvertising the World Wide Web, from lim@csua.berkeley.edu

# Example

```jldoctest
julia> cowsay("My favorite site is MooTube", cow=Cowsay.www)
 _____________________________
< My favorite site is MooTube >
 -----------------------------
        \\   ^__^
         \\  (oo)\\_______
            (__)\\       )\\/\\
                ||--WWW |
                ||     ||
```
"""
function www(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
        $thoughts   ^__^
         $thoughts  ($eyes)\\_______
            (__)\\       )\\/\\
             $tongue ||--WWW |
                ||     ||
"""
return the_cow
end
