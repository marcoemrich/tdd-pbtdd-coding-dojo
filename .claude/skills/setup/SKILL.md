---
name: setup
description: Set up the exercise project by running ./setup.sh for one stack. Accepts short names like "/setup Java" or "/setup TypeScript". Invoke when the user asks for /setup or wants to set up the project for a language.
---

# Setup

Run `./setup.sh` with the stack the user named and nothing else.

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

Report what the script printed: success with the test counts, or the error
message as is. If it refuses because a project already exists, pass that on;
do not delete files to make it run.
