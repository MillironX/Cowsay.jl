using Cowsay
using Documenter

DocMeta.setdocmeta!(Cowsay, :DocTestSetup, :(using Cowsay); recursive=true)

makedocs(;
    modules=[Cowsay],
    authors="Thomas A. Christensen II <25492070+MillironX@users.noreply.github.com> and contributors",
    repo="https://github.com/MillironX/cowsay.jl/blob/{commit}{path}#{line}",
    sitename="cowsay.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://millironx.com/Cowsay.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Available Cowfiles" => "cows.md",
        "Make your own Cowfile" => "cowfiles.md",
    ],
)

deploydocs(;
    repo="github.com/MillironX/Cowsay.jl",
    devbranch="master",
)
