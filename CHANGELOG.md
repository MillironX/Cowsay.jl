# Changelog

All notable changes to Cowsay.jl will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic
Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

### Added

- Cow "modes" (Borg, dead, greedy, etc.)

## [v0.3.1] - 2022-02-01

### Fixed

- Newlines in input message are no longer stripped out during text wrapping

## [v0.3.0] - 2022-02-01

### Added

- `cowsaid` and `cowthunk` functions for getting cow art without printing it
- Optional IO choice for `cowsay` and `cowthink` functions
- Automatic text wrapping

## [v0.2.1] - 2022-01-11

### Added

- `cowthink` function

## [v0.2.0] - 2021-11-29

### Added

- Unit testing via `jldoctest`
- Ability to customize cow art
- Ability to customize cow eyes
- Ability to customize cow tongue
- New cow artwork
  - blowfish
  - bunny
  - cower
  - dragon_and_cow
  - dragon
  - elephant_in_snake
  - elephant
  - eyes
  - flaming_sheep
  - fox
  - kitty
  - koala
  - mech_and_cow
  - meow
  - moofasa
  - moose
  - mutilated
  - sheep
  - skeleton
  - small
  - stegosaurus
  - supermilker
  - surgery
  - three_eyes
  - turkey
  - turtle
  - tux
  - udder
  - vader_koala
  - vader
  - www

### Changed

- Default cow abstracted to `Cowsay.default` function

## [v0.1.0] - 2021-09-23 (Unregistered)

### Added

- `cowsay` function for Julia in package format

[unreleased]: https://github.com/MillironX/Cowsay.jl/compare/v0.3.1...HEAD
[v0.3.0]: https://github.com/MillironX/Cowsay.jl/compare/v0.3.0...v0.3.1
[v0.3.0]: https://github.com/MillironX/Cowsay.jl/compare/v0.2.1...v0.3.0
[v0.2.1]: https://github.com/MillironX/Cowsay.jl/compare/v0.2.0...v0.2.1
[v0.2.0]: https://github.com/MillironX/Cowsay.jl/compare/v0.1.0...v0.2.0
[v0.1.0]: https://github.com/MillironX/Cowsay.jl/releases/tag/v0.1.0
