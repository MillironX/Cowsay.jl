"""
    function mech_and_cow()

# Example

```jldoctest
julia> cowsay("Do you ever get that feeling...?", cow=Cowsay.mech_and_cow)
 __________________________________
< Do you ever get that feeling...? >
 ----------------------------------
   \\                               ,-----.
   /                               |     |
   \\                            ,--|     |-.
   /                     __,----|  |     | |
   \\                   ,;::     |  `_____' |
   /                   `._______|    i^i   |
   \\                            `----| |---'| .
   /                       ,-------._| |== ||//
   \\                       |       |_|P`.  /'/
   /                       `-------' 'Y Y/'/'
   \\                                 .==\\ /_\\
   ^__^                             /   /'|  `i
   (oo)\\_______                   /'   /  |   |
   (__)\\       )\\/\\            /'    /   |   `i
      ||----w||           ___,;`----'.___L_,-'`\\__
      ||     ||          i_____;----\\.____i""\\____\\
```
"""
function mech_and_cow(;eyes="oo", tongue="  ", thoughts="\\")
sthguoht = thoughts;
if thoughts == "\\"
    sthguoht = "/"
end #if

the_cow =
"""
   $thoughts                               ,-----.
   $sthguoht                               |     |
   $thoughts                            ,--|     |-.
   $sthguoht                     __,----|  |     | |
   $thoughts                   ,;::     |  `_____' |
   $sthguoht                   `._______|    i^i   |
   $thoughts                            `----| |---'| .
   $sthguoht                       ,-------._| |== ||//
   $thoughts                       |       |_|P`.  /'/
   $sthguoht                       `-------' 'Y Y/'/'
   $thoughts                                 .==\\ /_\\
   ^__^                             /   /'|  `i
   ($eyes)\\_______                   /'   /  |   |
   (__)\\       )\\/\\            /'    /   |   `i
    $tongue||----w||           ___,;`----'.___L_,-'`\\__
      ||     ||          i_____;----\\.____i""\\____\\
"""
return the_cow
end
