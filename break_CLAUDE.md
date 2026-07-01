# break_CLAUDE.md — Development Standards for Rosetta Bootcamp

This file defines the working standards for Claude Code sessions in this repository.
It supplements CLAUDE.md (build commands, architecture) with process and safety conventions.

---

## Correctness and Verification

- **Never claim success without evidence.** After any code change, run the relevant CxxTest suite and report the actual output, not an assumed outcome.
- **Build before claiming it compiles.** Use `./scons.py -j<N> mode=release bin/<app>.linuxgccrelease` from inside `source/`. A change that hasn't been compiled has not been verified.
- **Trust the test suite, not your reading of the code.** Logical reasoning about correctness is supplementary to running tests; it is not a substitute.
- **Manual verification is required for scientific results.** Numerical outputs (scores, RMSDs, energies) must be checked against expected ranges or reference values — do not assume a run that completed without crashing is correct.
- **Read before editing.** Always read the full relevant file before making changes. Partial reads lead to context errors.

---

## Test-Driven Development

- **Write tests before or alongside implementation**, not after. Tests written first force you to specify the desired behavior precisely before encoding assumptions into the implementation.
- **Every new protocol class (Mover, Filter, etc.) requires a `.cxxtest.hh` file** in `source/test/protocols/<namespace>/`. Register it in `source/test/protocols.test.settings`.
- **Tests must call `core_init()` in `setUp()`** and use `TS_ASSERT*` macros. Use `create_test_in_pdb_pose()` from `test/util/pose_funcs.hh` for test structures.
- **A passing test suite is a necessary but not sufficient condition for scientific correctness.** Tests check invariants you thought to encode; they cannot test what you forgot to think about.

---

## Fail Loudly

- **Use `utility_exit_with_message()` or `throw` for bad state**, never silently return a default or clamp a value. The message must name the violated assumption and the actual values.
- **Guard preconditions at the top of functions.** If a function requires 1-based indexing, a non-empty pose, or a specific secondary structure assignment, assert it immediately.
- **Never absorb errors in catch blocks without re-throwing or exiting.** Silent swallowing of exceptions produces wrong results that look like correct ones — the worst class of scientific bug.
- **Use `basic::Tracer` for all diagnostic output**, named after the full namespace path (e.g. `"protocols.bootcamp.BootCampMover"`). Never use `std::cout`.

---

## Safety Guardrails — Always Ask First

Claude must **explicitly confirm with the user before** doing any of the following:

- `git push --force` or any force-push
- `git reset --hard` (discards committed or staged work)
- Deleting files or directories
- Committing to `main` directly
- Modifying shared branches (any branch not prefixed with the user's name or `break_`)
- Running a full rebuild (`./scons.py bin`) — it is slow and ties up the machine

For all other git operations (add, commit, checkout, branch, cherry-pick), proceed without asking unless the outcome is ambiguous.

---

## Git Workflow

- **All development happens in branches**, never directly on `main`.
- Branch naming convention for bootcamp: `break_lab<N>` (e.g. `break_lab1`).
- Commit message format: imperative mood, present tense, ≤72 characters. Example: `Remove Commons from copyright header in init.cc`.
- Stage specific files by name (`git add path/to/file`), never `git add -A` or `git add .`.
- Always run `git status` before committing to confirm exactly what will be included.

---

## Rosetta-Specific Conventions

- **Logging**: `basic::Tracer TR("protocols.namespace.ClassName");` — never `std::cout`.
- **Smart pointers**: `utility::pointer::make_shared<T>()`, not `std::make_shared`. Use `TOP`/`TCOP` typedefs from `T.fwd.hh`.
- **Indexing**: all residue, loop, and `utility::vector1` indices are **1-based**. An off-by-one error here is a silent scientific error.
- **Namespaces**: must mirror directory path exactly (`protocols::bootcamp` for `source/src/protocols/bootcamp/`).
- **File headers**: every `.cc` and `.hh` needs the Rosetta copyright block plus `@file`, `@brief`, `@author` doxygen tags.
- **Search before implementing**: Rosetta is large. Check `protocols/moves/`, `protocols/loops/`, `core/kinematics/` for existing primitives before writing new ones.
- **Simplify relentlessly**: prefer the simplest correct implementation. Delete indirection and abstractions that do not carry their weight.
- **Understand the biology first**: before writing code, articulate in one sentence what structural problem you are solving and why the algorithm addresses it.
