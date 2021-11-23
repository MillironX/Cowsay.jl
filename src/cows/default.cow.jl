"""
    function default()

The original cowfile

# Example

```jldoctest
julia> cowsay("Moo", cow=Cowsay.default)
 _____
< Moo >
 -----
        \\   ^__^
         \\  (oo)\\_______
            (__)\\       )\\/\\
                ||----w |
                ||     ||


```
"""
function default(;eyes="oo", tongue="  ", thoughts="\\")
thecow =
"""
        $thoughts   ^__^
         $thoughts  ($eyes)\\_______
            (__)\\       )\\/\\
             $tongue ||----w |
                ||     ||
"""
return thecow
end
