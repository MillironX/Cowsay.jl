"""
    function fox()

# Example

```jldoctest
julia> cowsay("What does the fox say?", cow=Cowsay.fox)
 ________________________
< What does the fox say? >
 ------------------------
         \\     ,-.      .-,
          \\    |-.\\ __ /.-|
           \\   \\  `    `  /
                /_     _ \\
              <  _`q  p _  >
              <.._=/  \\=_. >
                 {`\\()/`}`\\
                 {      }  \\
                 |{    }    \\
                 \\ '--'   .- \\
                 |-      /    \\
                 | | | | |     ;
                 | | |.;.,..__ |
               .-"";`         `|
              /    |           /
              `-../____,..---'`
```
"""
function fox(;eyes="oo", tongue="  ", thoughts="\\")
the_cow =
"""
         $thoughts     ,-.      .-,
          $thoughts    |-.\\ __ /.-|
           $thoughts   \\  `    `  /
                /_     _ \\
              <  _`q  p _  >
              <.._=/  \\=_. >
                 {`\\()/`}`\\
                 {      }  \\
                 |{    }    \\
                 \\ '--'   .- \\
                 |-      /    \\
                 | | | | |     ;
                 | | |.;.,..__ |
               .-"";`         `|
              /    |           /
              `-../____,..---'`
"""
return the_cow
end
