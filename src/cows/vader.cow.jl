"""
    function vader()

Cowth Vader, from geordan@csua.berkeley.edu

# Example

```jldoctest
julia> cowsay("Luke, I am your father!", cow=Cowsay.vader)
 _________________________
< Luke, I am your father! >
 -------------------------
        \\    ,-^-.
         \\   !oYo!
          \\ /./=\\.\\______
               ##        )\\/\\
                ||-----w||
                ||      ||

               Cowth Vader
```
"""
function vader(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
        $thoughts    ,-^-.
         $thoughts   !oYo!
          $thoughts /./=\\.\\______
               ##        )\\/\\
                ||-----w||
                ||      ||

               Cowth Vader
"""
return the_cow
end
