"""
    function moose()

# Example
```jldoctest
julia> cowsay("Time to vamoose", cow=Cowsay.moose)
 _________________
< Time to vamoose >
 -----------------
  \\
   \\   \\_\\_    _/_/
    \\      \\__/
           (oo)\\_______
           (__)\\       )\\/\\
               ||----w |
               ||     ||
```
"""
function moose(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
  $thoughts
   $thoughts   \\_\\_    _/_/
    $thoughts      \\__/
           ($eyes)\\_______
           (__)\\       )\\/\\
            $tongue ||----w |
               ||     ||
"""
return the_cow
end
