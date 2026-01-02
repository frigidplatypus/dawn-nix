# Tasks: Build dawn Nix Package

**Input**: Design documents from `/specs/001-build-dawn-nix/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/

**Tests**: None

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story] Description`

- **[P]**: Can run in parallel (different files, no dependencies)
- **[Story]**: Which user story this task belongs to (e.g., US1, US2, US3)
- Include exact file paths in descriptions

## Path Conventions

- **Nix package**: flake.nix at repository root

## Phase 3: User Story 1 - Build on x86_64 Linux (Priority: P1) 🎯 MVP

**Goal**: Enable building the dawn package for x86_64 Linux using Nix

**Independent Test**: Run `nix build` on x86_64-linux and verify it produces a working dawn executable

### Implementation for User Story 1

- [x] T001 [US1] Create flake.nix with Nix derivation for dawn package in flake.nix

**Checkpoint**: At this point, User Story 1 should be fully functional and testable independently

---

## Phase 4: User Story 2 - Build on aarch64 Darwin (Priority: P2)

**Goal**: Enable building the dawn package for aarch64 Darwin using Nix

**Independent Test**: Run `nix build` on aarch64-darwin and verify it produces a working dawn executable

### Implementation for User Story 2

- [x] T002 [US2] Update flake.nix to support aarch64-darwin platform in flake.nix

**Checkpoint**: At this point, User Stories 1 AND 2 should both work independently

---

## Phase 5: Polish & Cross-Cutting Concerns

**Purpose**: Improvements that affect multiple user stories

- [x] T003 Run quickstart.md validation

---

## Dependencies & Execution Order

### Phase Dependencies

- **User Stories (Phase 3+)**: No blocking dependencies - can proceed in priority order (P1 → P2)
- **Polish (Final Phase)**: Depends on all desired user stories being complete

### User Story Dependencies

- **User Story 1 (P1)**: No dependencies on other stories
- **User Story 2 (P2)**: May reuse flake.nix from US1 but independently testable

### Within Each User Story

- Core implementation before integration
- Story complete before moving to next priority

### Parallel Opportunities

- User stories can proceed sequentially in priority order
- Different user stories can be worked on by different team members if file conflicts avoided

---

## Implementation Strategy

### MVP First (User Story 1 Only)

1. Complete Phase 3: User Story 1
2. **STOP and VALIDATE**: Test User Story 1 independently
3. Deploy/demo if ready

### Incremental Delivery

1. Add User Story 1 → Test independently → Deploy/Demo (MVP!)
2. Add User Story 2 → Test independently → Deploy/Demo
3. Each story adds value without breaking previous stories

### Parallel Team Strategy

With multiple developers:

1. Developer A: User Story 1
2. Developer B: User Story 2 (after US1 complete to avoid file conflicts)

---

## Notes

- Each user story modifies the same file but should be independently completable
- Verify build succeeds after each task
- Commit after each task
- Stop at any checkpoint to validate story independently