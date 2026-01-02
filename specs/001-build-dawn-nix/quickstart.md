# Quickstart: Build dawn Nix Package

## Building the Package

1. Ensure Nix is installed with flakes enabled
2. Clone or navigate to the repository
3. Run the build command:

```bash
nix build
```

This will build the dawn package for your current platform.

## Running the Application

After successful build, the binary will be available at `./result/bin/dawn`

```bash
./result/bin/dawn
```

## Supported Platforms

- x86_64-linux
- aarch64-darwin

For cross-compilation to other platforms, use Nix's cross-compilation features.