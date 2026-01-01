# AGENTS.md for dawn-nix

## Project Overview
This is a C program built using Nix flake. The default package is the compiled C executable. No testing is required.

## Build/Lint/Test Commands
- **Build**: `nix build` - Builds the C program as the default flake package
- **No linting**: Not required
- **No testing**: Testing is not needed for this project

## Code Style Guidelines
- **Language**: C (standard C99 or later)
- **Naming**: snake_case for functions/variables, CamelCase for structs/types
- **Imports**: Include headers at top, use <> for system headers, "" for local
- **Formatting**: Consistent indentation (4 spaces), no trailing whitespace
- **Types**: Use appropriate types, avoid magic numbers, typedef for clarity
- **Error Handling**: Check return values, use errno, propagate errors appropriately
- **Comments**: Document complex logic, functions with purpose and params
- **File Structure**: One main.c, separate headers (.h) for declarations

## Agent-Specific Rules
No Cursor or Copilot rules found in repository.

## Active Technologies
- C (C23) + cmake, libcurl (001-build-dawn-nix)

## Recent Changes
- 001-build-dawn-nix: Added C (C23) + cmake, libcurl
