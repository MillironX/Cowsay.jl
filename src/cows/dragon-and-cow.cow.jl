"""
    function dragon_and_cow()

A dragon smiting a cow, possible credit to kube@csua.berkeley.edu

# Example

```jldoctest
julia> cowsay("Roast beef: it's what's for dinner", cow=Cowsay.dragon_and_cow)
 ____________________________________
< Roast beef: it's what's for dinner >
 ------------------------------------
                       \\                    ^    /^
                        \\                  / \\  // \\
                         \\   |\\___/|      /   \\//  .\\
                          \\  /O  O  \\__  /    //  | \\ \\           *----*
                            /     /  \\/_/    //   |  \\  \\          \\   |
                            @___@`    \\/_   //    |   \\   \\         \\/\\ \\
                           0/0/|       \\/_ //     |    \\    \\         \\  \\
                       0/0/0/0/|        \\///      |     \\     \\       |  |
                    0/0/0/0/0/_|_ /   (  //       |      \\     _\\     |  /
                 0/0/0/0/0/0/`/,_ _ _/  ) ; -.    |    _ _\\.-~       /   /
                             ,-}        _      *-.|.-~-.           .~    ~
            \\     \\__/        `/\\      /                 ~-. _ .-~      /
             \\____(oo)           *.   }            {                   /
             (    (--)          .----~-.\\        \\-`                 .~
             //__\\\\  \\__ Ack!   ///.----..<        \\             _ -~
            //    \\\\               ///-._ _ _ _ _ _ _{^ - - - - ~
```
"""
function dragon_and_cow(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
                       $thoughts                    ^    /^
                        $thoughts                  / \\  // \\
                         $thoughts   |\\___/|      /   \\//  .\\
                          $thoughts  /O  O  \\__  /    //  | \\ \\           *----*
                            /     /  \\/_/    //   |  \\  \\          \\   |
                            @___@`    \\/_   //    |   \\   \\         \\/\\ \\
                           0/0/|       \\/_ //     |    \\    \\         \\  \\
                       0/0/0/0/|        \\///      |     \\     \\       |  |
                    0/0/0/0/0/_|_ /   (  //       |      \\     _\\     |  /
                 0/0/0/0/0/0/\`/,_ _ _/  ) ; -.    |    _ _\\.-~       /   /
                             ,-}        _      *-.|.-~-.           .~    ~
            \\     \\__/        \`/\\      /                 ~-. _ .-~      /
             \\____($eyes)           *.   }            {                   /
             (    (--)          .----~-.\\        \\-\`                 .~
             //__\\\\  \\__ Ack!   ///.----..<        \\             _ -~
            //    \\\\               ///-._ _ _ _ _ _ _{^ - - - - ~
"""
return the_cow
end
