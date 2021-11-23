"""
    function three_eyes()

A cow with three eyes, brought to you by dpetrou@csua.berkeley.edu

# Example
```jldoctest
julia> cowsay("The better to see you with...", cow=Cowsay.three_eyes)
 _______________________________
< The better to see you with... >
 -------------------------------
        \\  ^___^
         \\ (ooo)\\_______
           (___)\\       )\\/\\
                ||----w |
                ||     ||
```

"""
function three_eyes(;eyes="oo", tongue="  ", thoughts="\\")
eye = first(eyes)
eyes = repeat(eye, 3)
the_cow =
"""
        $thoughts  ^___^
         $thoughts ($eyes)\\_______
           (___)\\       )\\/\\
            $tongue  ||----w |
                ||     ||
"""
return the_cow
end
