<!--
Sync Impact Report
Version change: none → 1.0.0
Added sections: None
Removed sections: Testing-related principles (PRINCIPLE_3, PRINCIPLE_4)
Modified principles: Added Nix Flake Build and No Testing principles
Templates requiring updates: spec-template.md (removed testing mandatory), plan-template.md (testing none) - ✅ updated
Follow-up TODOs: None
-->

# dawn-nix Constitution

## Core Principles

### Nix Flake Build
The project builds a C program as the default package in a flake.nix. All builds must use Nix for reproducibility and dependency management.

### No Testing
Testing is not required for this project. Focus on building and deploying the C program without test suites or validation phases.

## Build Requirements

The build must use Nix flake for reproducible environments. The default package should be the compiled C program. Dependencies are managed through Nix derivations.

## Development Workflow

Develop C source code in the repository root or appropriate subdirectories. Build the project using `nix build`. No testing or linting phases are enforced.

## Governance

Constitution supersedes all other practices. Amendments require documentation and approval. Versioning follows semantic rules for governance changes.

**Version**: 1.0.0 | **Ratified**: TODO(RATIFICATION_DATE): Original ratification date unknown. | **Last Amended**: 2026-01-01