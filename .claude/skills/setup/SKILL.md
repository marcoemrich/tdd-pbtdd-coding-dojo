---
name: setup
description: Set up the exercise project by running ./setup.sh for one stack, then run the tests to confirm the setup worked. Accepts short names like "/setup Java" or "/setup TypeScript". Invoke when the user asks for /setup or wants to set up the project for a language.
---

# Setup

Run `./setup.sh` with the stack the user named, then confirm with a test run.

## Map the argument to a stack

Match case-insensitively:

| User says | Run |
|---|---|
| `java`, `java-junit-maven` | `./setup.sh java-junit-maven` |
| `ts`, `typescript`, `typescript-vitest` | `./setup.sh typescript-vitest` |

If no stack was named, ask: Java or TypeScript. Any other name is not
supported; say so and offer these two.

## Run it

Call the script once. The first Maven run can take several minutes, so allow a
generous timeout. Do not check prerequisites, install anything, or edit files
yourself — the script does the checks and prints what is missing.

If the script fails, report its error message as is and stop. If it refuses
because a project already exists, pass that on; do not delete files to make it
run.

## Confirm the setup

After the script succeeded, run the stack's test suite once more:

| Stack | Command |
|---|---|
| Java | `templates/java-junit-maven/verify.sh` |
| TypeScript | `templates/typescript-vitest/verify.sh` |

The setup is confirmed only when **both** examples ran and passed:

- Java: `ExampleTest` and `ExampleProperties` — `Tests run: 2, Failures: 0,
  Errors: 0` and `BUILD SUCCESS`
- TypeScript: `src/example.spec.ts` and `src/example.property.spec.ts` —
  `Tests  2 passed (2)`

Report either "Setup confirmed" with the test counts, or which of the two
examples is missing or failing, with the output. Do not fix anything yourself.
