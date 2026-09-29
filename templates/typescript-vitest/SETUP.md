# TypeScript + Vitest

## Prerequisites

- Node.js v22.12 or higher (`node --version`); Vitest 5 does not run on Node 20
- npm

## Install

```bash
./setup.sh typescript-vitest
```

Dependencies are installed with `npm ci` from the committed `package-lock.json`,
so every participant gets byte-identical versions.

## Commands

| Purpose | Command |
|---|---|
| Run the suite | `npm test` |
| Watch mode | `npm run test:watch` |
| Lint and smell report | `npm run lint` |

## Expected output

`./setup.sh` ends with the example test and the example property:

```
 ✓ src/example.spec.ts (1 test)
 ✓ src/example.property.spec.ts (1 test)

 Test Files  2 passed (2)
      Tests  2 passed (2)
```

Once you have worked through exercises you will see more files and tests than
this. What matters is that everything passes.

## Notes for the workflow

- Test files use the `.spec.ts` suffix; `vitest.config.ts` only picks up
  `src/**/*.spec.ts`.
- Inactive test-list entries are `it.todo()`.
- Property-based tests use [fast-check](https://fast-check.dev/) inside a
  regular Vitest `it`, in `<feature>.property.spec.ts`.
  `src/example.property.spec.ts` is the minimal runnable example.
- `eslint.config.js` carries the measurements and smells for the end-refactor
  pass. `sonarjs/cognitive-complexity` is set to threshold 0 on purpose: every
  branching function reports its score in the message text, so those findings
  are measurements, not smells.
