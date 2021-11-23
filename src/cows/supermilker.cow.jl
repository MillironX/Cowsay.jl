"""
    function supermilker()

A cow being milked, probably from Lars Smith (lars@csua.berkeley.edu)

# Example
```jldoctest
julia> cowsay("Paying the bills", cow=Cowsay.supermilker)
 __________________
< Paying the bills >
 ------------------
  \\   ^__^
   \\  (oo)\\_______        ________
      (__)\\       )\\/\\    |Super |
          ||----W |       |Milker|
          ||    UDDDDDDDDD|______|
```
"""
function supermilker(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
  $thoughts   ^__^
   $thoughts  ($eyes)\\_______        ________
      (__)\\       )\\/\\    |Super |
       $tongue ||----W |       |Milker|
          ||    UDDDDDDDDD|______|
"""
return the_cow
end
