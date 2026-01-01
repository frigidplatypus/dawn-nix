# Research: Build dawn Nix Package

## Findings

Dawn is a C23 terminal-based markdown editor with live rendering. It uses CMake for build system and requires libcurl for dependencies.

### Build Requirements
- C23 compatible compiler (Clang 16+ or GCC 13+)
- CMake 3.16+
- libcurl

### Source Structure
- CMakeLists.txt for build configuration
- Makefile as alternative build method
- Submodules for third-party dependencies

### Platform Support
- Native builds on macOS/Linux
- Cross-compilation possible with appropriate toolchains

## Decisions

### Build Method
**Decision**: Use Nixpkgs stdenv.mkDerivation with cmake build system.

**Rationale**: Standard Nix approach for CMake-based C projects ensures reproducibility and follows community conventions.

**Alternatives Considered**:
- Manual Makefile build: Rejected because Nix standard provides better dependency management and cross-platform support.
- Custom derivation: Unnecessary complexity when standard tools suffice.

### Dependencies
**Decision**: Include cmake and libcurl as build inputs.

**Rationale**: Directly from project README requirements.

**Alternatives Considered**: None - requirements are explicit.

### Source Fetching
**Decision**: Use fetchFromGitHub with specific commit/version.

**Rationale**: Ensures reproducible builds and allows pinning to stable releases.

**Alternatives Considered**:
- fetchTarball: Less specific than GitHub fetcher.
- fetchgit: Overkill for public GitHub repo.