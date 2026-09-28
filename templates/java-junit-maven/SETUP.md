# Java + JUnit + Maven

Contributed by Oliver Roth.

## Prerequisites

- JDK 17 or higher (`java --version` **and** `javac --version`)
- Maven 3.9 or higher (`mvn --version`)

On Debian and Ubuntu, `apt install maven` pulls only a JRE, so `javac` is
missing and the build fails with a misleading `release version 17 not
supported`. Install a JDK explicitly:

```bash
sudo apt install default-jdk-headless maven
```

## Install

```bash
./setup.sh java-junit-maven
```

Setup runs `mvn dependency:go-offline` first. That warms your local `~/.m2`
repository while you still have time to fix a proxy or a blocked mirror —
doing it for the first time during the workshop is the slow path. A few hundred
kB still arrive with the first test run, because Surefire resolves its JUnit
Platform launcher only when tests actually execute.

## Commands

| Purpose | Command |
|---|---|
| Run the suite | `mvn test` |
| Single test class | `mvn test -Dtest=ExampleTest` |
| Lint and smell report | `mvn pmd:check` |

Your IDE's test runner works as well (IntelliJ IDEA, or VS Code with the
Java extensions).

## Expected output

`./setup.sh` ends with the example test and the example property:

```
[INFO] Tests run: 2, Failures: 0, Errors: 0, Skipped: 0
[INFO] BUILD SUCCESS
```

Once you have worked through exercises you will see more tests than this. What
matters is that the build succeeds and no test fails.

## Notes for the workflow

- Sources live in `src/main/java/`, tests in `src/test/java/`, test classes are
  named `<Feature>Test.java`.
- Inactive test-list entries are `@Disabled`.
- Property-based tests use [jqwik](https://jqwik.net/) and live in
  `<Feature>Properties.java`; Surefire picks up `*Test.java` and
  `*Properties.java`. `ExampleProperties.java` is the minimal runnable example.
- jqwik is pinned to 1.9.3 on purpose. From 1.10 on it ships an anti-AI clause
  and prints instructions for coding agents into the test output. Do not
  upgrade it for this workshop.
- `pmd-ruleset.xml` carries the measurements and smells for the end-refactor
  pass. `CognitiveComplexity` uses `reportLevel=1` on purpose: every branching
  method reports its score in the message text, so those findings are
  measurements, not smells.
- `failOnViolation` is false — PMD reports, it does not gate the build. The
  refactor decision stays with you and the agent.
