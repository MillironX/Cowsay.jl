using Cowsay
using Test
using Documenter

DocMeta.setdocmeta!(Cowsay, :DocTestSetup, :(using Cowsay); recursive=true)
doctest(Cowsay)
