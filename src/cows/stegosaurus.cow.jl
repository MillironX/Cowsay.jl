##
## A stegosaur with a top hat?
##
"""
    function stegosaurus()

A stegosaur with a top hat?

# Example
```jldoctest
julia> cowsay("How do you do?", cow=Cowsay.stegosaurus)
 ________________
< How do you do? >
 ----------------
\\                             .       .
 \\                           / `.   .' "
  \\                  .---.  <    > <    >  .---.
   \\                 |    \\  \\ - ~ ~ - /  /    |
         _____          ..-~             ~-..-~
        |     |   \\~~~\\.'                    `./~~~/
       ---------   \\__/                        \\__/
      .'  O    \\     /               /       \\  "
     (_____,    `._.'               |         }  \\/~~~/
      `----.          /       }     |        /    \\__/
            `-.      |       /      |       /      `. ,~~|
                ~-.__|      /_ - ~ ^|      /- _      `..-'
                     |     /        |     /     ~-.     `-. _  _  _
                     |_____|        |_____|         ~ - . _ _ _ _ _>
```
"""
function stegosaurus(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
$thoughts                             .       .
 $thoughts                           / `.   .' "
  $thoughts                  .---.  <    > <    >  .---.
   $thoughts                 |    \\  \\ - ~ ~ - /  /    |
         _____          ..-~             ~-..-~
        |     |   \\~~~\\.'                    `./~~~/
       ---------   \\__/                        \\__/
      .'  O    \\     /               /       \\  "
     (_____,    `._.'               |         }  \\/~~~/
      `----.          /       }     |        /    \\__/
            `-.      |       /      |       /      `. ,~~|
                ~-.__|      /_ - ~ ^|      /- _      `..-'
                     |     /        |     /     ~-.     `-. _  _  _
                     |_____|        |_____|         ~ - . _ _ _ _ _>
"""
return the_cow
end
