using cowsay
using Documenter

DocMeta.setdocmeta!(cowsay, :DocTestSetup, :(using cowsay); recursive=true)

makedocs(;
    modules=[cowsay],
    authors="Thomas A. Christensen II <25492070+MillironX@users.noreply.github.com> and contributors",
    repo="https://github.com/MillironX/cowsay.jl/blob/{commit}{path}#{line}",
    sitename="cowsay.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MillironX.github.io/cowsay.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MillironX/cowsay.jl",
    devbranch="master",
)
