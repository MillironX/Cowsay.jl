"""
    function meow()

A meowing tiger?

# Example
```jldoctest
julia> cowsay("We're kind of stupid that way", cow=Cowsay.meow)
 _______________________________
< We're kind of stupid that way >
 -------------------------------
  \\
   \\ ,   _ ___.--'''`--''//-,-_--_.
      \\`"' ` || \\\\ \\ \\\\/ / // / ,-\\\\`,_
     /'`  \\ \\ || Y  | \\|/ / // / - |__ `-,
    /@"\\  ` \\ `\\ |  | ||/ // | \\/  \\  `-._`-,_.,
   /  _.-. `.-\\,___/\\ _/|_/_\\_\\/|_/ |     `-._._)
   `-'``/  /  |  // \\__/\\__  /  \\__/ \\
        `-'  /-\\/  | -|   \\__ \\   |-' |
          __/\\ / _/ \\/ __,-'   ) ,' _|'
         (((__/(((_.' ((___..-'((__,'
```
"""
function meow(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
  $thoughts
   $thoughts ,   _ ___.--'''`--''//-,-_--_.
      \\`"' ` || \\\\ \\ \\\\/ / // / ,-\\\\`,_
     /'`  \\ \\ || Y  | \\|/ / // / - |__ `-,
    /@"\\  ` \\ `\\ |  | ||/ // | \\/  \\  `-._`-,_.,
   /  _.-. `.-\\,___/\\ _/|_/_\\_\\/|_/ |     `-._._)
   `-'``/  /  |  // \\__/\\__  /  \\__/ \\
        `-'  /-\\/  | -|   \\__ \\   |-' |
          __/\\ / _/ \\/ __,-'   ) ,' _|'
         (((__/(((_.' ((___..-'((__,'
"""
return the_cow
end
