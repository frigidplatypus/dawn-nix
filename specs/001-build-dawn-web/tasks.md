# Tasks: Build dawn Web Package

**Input**: Design documents from `/specs/001-build-dawn-web/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/

**Tests**: None

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story] Description`

- **[P]**: Can run in parallel (different files, no dependencies)
- **[Story]**: Which user story this task belongs to (e.g., US1, US2, US3)
- Include exact file paths in descriptions

## Path Conventions

- **Nix package**: flake.nix at repository root

## Phase 3: User Story 1 - Build Web Version (Priority: P1) 🎯 MVP

**Goal**: Enable building the dawn package for web deployment using Emscripten

**Independent Test**: Run `nix build .#dawn-web` and verify web files are produced

### Implementation for User Story 1

- [x] T001 [US1] Add dawn-web package to flake.nix using emscriptenStdenv.mkDerivation in flake.nix

**Checkpoint**: At this point, User Story 1 should be fully functional and testable independently

---

## Dependencies & Execution Order

### Phase Dependencies

- **User Stories (Phase 3+)**: No blocking dependencies - can proceed in priority order

### User Story Dependencies

- **User Story 1 (P1)**: No dependencies on other stories

### Within Each User Story

- Core implementation before integration
- Story complete before moving to next priority

### Parallel Opportunities

- User stories can proceed sequentially

---

## Implementation Strategy

### MVP First (User Story 1 Only)

1. Complete Phase 3: User Story 1
2. **STOP and VALIDATE**: Test User Story 1 independently
3. Deploy/demo if ready

### Incremental Delivery

1. Add User Story 1 → Test independently → Deploy/Demo (MVP!)

---

## Notes

- Each user story modifies the same file but should be independently completable
- Verify build succeeds after each task
- Commit after each task