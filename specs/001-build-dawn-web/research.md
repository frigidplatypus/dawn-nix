# Research: Build dawn Web Package

## Findings

Dawn supports experimental web build using Emscripten for WebAssembly compilation. The build target is 'make web' which requires Emscripten SDK.

### Build Requirements
- Emscripten SDK for WebAssembly compilation
- CMake for build configuration
- Compatible with dawn's Makefile targets

### Nix Integration
- nixpkgs provides emscriptenStdenv for cross-compilation
- Emscripten toolchain includes compiler, linker, and runtime

### Output Artifacts
- WebAssembly binary (.wasm)
- JavaScript glue code
- HTML file for testing

## Decisions

### Build Environment
**Decision**: Use Nix emscriptenStdenv.mkDerivation for web build.

**Rationale**: Standard Nix approach for Emscripten builds ensures reproducibility and handles toolchain setup.

**Alternatives Considered**:
- Manual Emscripten installation: Rejected because Nix provides better isolation and reproducibility.
- Native Emscripten outside Nix: Unnecessary complexity when Nix integration exists.

### Dependencies
**Decision**: Include emscripten and cmake in build inputs.

**Rationale**: Required for WebAssembly compilation and build configuration.

**Alternatives Considered**: None - dependencies are explicit in dawn's build requirements.