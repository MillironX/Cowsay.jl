#!/bin/sh
julia --project=docs -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate()'
julia --project=docs -e 'using Documenter: DocMeta, doctest; using Cowsay; DocMeta.setdocmeta!(Cowsay, :DocTestSetup, :(using Cowsay); recursive=true); doctest(Cowsay)'
julia --project=docs docs/make.jl
