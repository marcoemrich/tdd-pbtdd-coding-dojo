---
theme: ./theme
title: "Agentic AI — TDD vs. Property Based Testing"
info: |
  Coding Dojo, Dev Connect OWL 2026
layout: cover
image: /title-coding-dojo.jpg
transition: slide-left
mdc: true
---

# Agentic AI
## TDD vs. Property Based Testing

Coding Dojo · Dev Connect OWL 2026

<style>
:global(.cover-img) { top: 20% !important; height: 80% !important; object-position: top; }
</style>

<!--
Speaker notes go in HTML comments at the end of a slide.
-->

---
layout: full-image
image: /retreat-no-coder-is-perfect.jpg
caption: bottom
---

# No Coder is Perfect

---
layout: full-image
image: /retreat-practise.jpg
caption: top-right
---

# Practise

---
layout: full-image
image: /retreat-practise-on-the-job.jpg
caption: top-left
---

# Practise<br>on the job…

---
layout: full-image
image: /retreat-practise-on-stage.jpg
caption: bottom
---

# Practise on stage?

---
layout: full-image
image: /retreat-deliberate-practise.jpg
caption: bottom-left
---

# Deliberate<br>Practise

---
layout: full-image
image: /retreat-tools.jpg
caption: top-right
---

# Tools: AI TDD PBT

---
layout: full-image
image: /retreat-no-shipping-day.jpg
caption: bottom-left
---

<h1 style="max-width: 36%">No Shipping Day</h1>

---
layout: full-image
image: /retreat-pair-programming.jpg
caption: none
---

<h1 style="position: absolute; left: 10%; width: 55%; top: 46%; height: 27%; display: flex; align-items: flex-end; justify-content: center; text-align: center">Pair Programming</h1>

---
layout: full-image
caption: none
---

<img src="/retreat-tdd.jpg" alt="" class="absolute top-0 h-full" style="left: 21%; width: 79%" draggable="false" />

<svg class="absolute inset-0 w-full h-full" viewBox="0 0 1600 900" fill="none" stroke="black" stroke-width="4">
  <defs>
    <marker id="tdd-arrow" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse">
      <path d="M0,0 L10,5 L0,10 L3,5 z" fill="black" stroke="none" />
    </marker>
  </defs>
  <path d="M960,350 C1010,350 1040,470 1045,580" marker-end="url(#tdd-arrow)" />
  <path d="M900,795 C830,795 790,730 712,722" marker-end="url(#tdd-arrow)" />
  <path d="M535,565 C540,480 610,450 655,405" marker-end="url(#tdd-arrow)" />
</svg>

<h1 style="position: absolute; left: 1.5%; top: 0; color: #000; text-shadow: 0 6px 5px rgba(0, 0, 0, 0.6)">Test-Driven<br>Development</h1>

<div class="absolute text-white font-bold" style="left: 50.3%; top: 43%; transform: translate(-50%, -50%); font: 700 71px Arial, sans-serif">Red</div>
<div class="absolute text-white font-bold" style="left: 65.3%; top: 72.8%; transform: translate(-50%, -50%); font: 700 58px Arial, sans-serif">Green</div>
<div class="absolute text-white font-bold" style="left: 34%; top: 74.4%; transform: translate(-50%, -50%); font: 700 34px Arial, sans-serif">Refactoring</div>

---

# Pick your Poison {.poison-title}

<ul class="poison">
  <li><strong>Exact Coding - Skills &amp; Agents</strong><br><a href="https://github.com/marcoemrich/EXACT-Coding-Exercises">https://github.com/marcoemrich/EXACT-Coding-Exercises</a></li>
  <li><strong>nWave</strong><br><a href="https://github.com/nWave-ai/nWave">https://github.com/nWave-ai/nWave</a></li>
  <li><strong>SuperPowers</strong><br><a href="https://github.com/obra/superpowers">https://github.com/obra/superpowers</a></li>
  <li><strong>Matt Pocock - Skills &amp; Agents</strong><br><a href="https://github.com/mattpocock/skills">https://github.com/mattpocock/skills</a></li>
  <li><strong>Lada Kessler - TDD Skill</strong><br><a href="https://github.com/lexler/skill-factory/tree/main/output_skills/testing/tdd">https://github.com/lexler/skill-factory/tree/main/output_skills/testing/tdd</a></li>
  <li><strong>Build Your Own..</strong></li>
</ul>

<style>
.poison-title { color: #21E599; text-align: center; }
.poison { margin-top: 1rem; font-size: 1.3rem; line-height: 1.25; list-style: disc; padding-left: 1.5rem; }
.poison li { line-height: 1.3; margin: 0 0 0.5rem; }
.poison strong { font-weight: 800; color: #000; }
.poison a { color: var(--slidev-theme-red); text-decoration: underline; border-bottom: none; }
</style>

---

# The EXACT Coding Harness {.exact-title}

```text
.claude/
├── VERSION
├── agents/
│   └── refactor.md                      # isolated refactoring sub-agent
└── skills/
    ├── exact-coding/SKILL.md            # entry point: full Predictive-TDD loop
    ├── exact-coding-isolated-refactor/  # variant: refactor via sub-agent
    │   └── SKILL.md
    ├── exact-coding-shared/
    │   └── human-in-the-loop.md
    ├── example-mapping/SKILL.md         # explore the spec
    ├── test-list/SKILL.md               # full test list up front
    ├── predictive-tdd/
    │   ├── SKILL.md                     # predict before every check
    │   └── stacks/
    │       ├── typescript-vitest.md
    │       ├── java-junit-maven.md
    │       └── python-pytest.md
    ├── red/SKILL.md                     # phase skills
    ├── green/SKILL.md
    ├── refactor/SKILL.md
    └── end-refactor/SKILL.md            # final metric-driven pass
```

<style>
.exact-title { color: #21E599; }
.slidev-layout pre, .slidev-layout .slidev-code { font-size: 0.85rem !important; line-height: 1.3 !important; background: transparent !important; padding: 0 !important; }
</style>

---

# EXACT Coding at a Glance {.exact-title}

<div class="exact-glance">
<div>

### Main Skills
<p><code>/exact-coding</code> full loop: test list → Red → Green → Refactor</p>
<p><code>/exact-coding-isolated-refactor</code> same loop, refactoring in an isolated sub-agent</p>
<p><code>/predictive-tdd</code> the method: predict before every check</p>

### Control Skills
<p><code>/red</code> one behavior to a behavioral Red, then stop</p>
<p><code>/green</code> smallest change that passes, then stop</p>
<p><code>/refactor</code> Four Rules + domain review, then stop</p>

### Extras (manual)
<p><code>/example-mapping</code> rules &amp; examples before the test list</p>
<p><code>/end-refactor</code> metric-driven final cleanup</p>

</div>
<div>

### Autonomy Levels
<p><code>full-hitl</code> stop after Test List, Red, Refactor</p>
<p><code>refactor-only</code> stop after Refactor</p>
<p><code>red-only</code> stop after Red</p>
<p><code>every-n-tests N</code> stop every N cycles</p>
<p><code>task-end</code> stop at the end of the task</p>
<p><code>autonomous</code> never stop</p>
<p class="hint">Wrong prediction → stop (up to every-n-tests)</p>

### Harnesses
<p>Claude Code · pi · OpenCode · Cursor · GitHub Copilot</p>

### Language Stacks
<p>TypeScript / Vitest</p>
<p>Java / JUnit 5 / Maven</p>
<p>Python / pytest</p>

</div>
</div>

<style>
.exact-title { color: #21E599; }
.exact-glance { display: grid; grid-template-columns: 1fr 1fr; gap: 2.5rem; margin-top: 1rem; font-size: 0.85rem; line-height: 1.35; color: #262626; }
.exact-glance h3 { color: #21E599; font-weight: 700; font-size: 1.1rem; margin: 0.9rem 0 0.25rem; }
.exact-glance > div > h3:first-child { margin-top: 0; }
.exact-glance p { margin: 0; }
.exact-glance code { font-weight: 700; background: none; padding: 0; margin-right: 0.35rem; color: #262626; }
.exact-glance .hint { color: #808080; font-style: italic; }
</style>

---

# Get the Repo {.repo-title}

<div class="repo">
<div class="repo-text">
  <a class="repo-short" href="https://tinyurl.com/2aojjooj">tinyurl.com/2aojjooj</a>
  <p class="repo-full">github.com/marcoemrich/tdd-pbtdd-coding-dojo</p>
  <p>Kata, setup for TypeScript &amp; Java and the EXACT Coding skills</p>
</div>
<img src="/repo-qr.svg" alt="QR code for tinyurl.com/2aojjooj" class="repo-qr" />
</div>

<style>
.repo-title { color: #21E599; }
.repo { display: flex; align-items: center; justify-content: space-between; gap: 3rem; margin-top: 2.5rem; }
.repo-short { font-size: 2.4rem; font-weight: 800; color: #262626; text-decoration: none; border-bottom: none; }
.repo-full { font-family: 'Roboto Mono', monospace; font-size: 1rem; color: #808080; margin-top: 0.5rem; }
.repo-text p:last-child { font-size: 1.1rem; margin-top: 1.5rem; }
.repo-qr { width: 260px; height: 260px; }
</style>

---

# Property Based Testing {.pbt-title}

<div class="pbt-grid">
<div>

### TypeScript · Vitest + fast-check

```ts
import { describe, it, expect } from "vitest";
import fc from "fast-check";
import { add } from "./example.js";

describe("add", () => {
  it("should be commutative", () => {
    fc.assert(
      fc.property(fc.integer(), fc.integer(), (a, b) => {
        expect(add(a, b)).toBe(add(b, a));
      }),
    );
  });
});
```

</div>
<div>

### Java · JUnit 5 + jqwik

```java
import static org.junit.jupiter.api.Assertions.assertEquals;

import net.jqwik.api.ForAll;
import net.jqwik.api.Property;

class ExampleProperties {
    @Property
    void addIsCommutative(@ForAll int a, @ForAll int b) {
        assertEquals(Example.add(a, b), Example.add(b, a));
    }
}
```

</div>
</div>

<style>
.pbt-title { color: #21E599; }
.pbt-grid { display: grid; grid-template-columns: minmax(0, 1fr) minmax(0, 1fr); gap: 1.5rem; margin-top: 1rem; }
.pbt-grid h3 { color: #21E599; font-weight: 700; font-size: 1.05rem; margin: 0 0 0.5rem; }
.pbt-grid .slidev-code { font-size: 0.7rem !important; line-height: 1.5 !important; }
</style>

---

# Example vs. Property {.pbt-title}

<svg class="pbt-chart" viewBox="0 0 900 400">
  <defs>
    <marker id="pbt-axis" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto">
      <path d="M0,0 L10,5 L0,10 z" fill="#262626" />
    </marker>
  </defs>
  <g v-click="2">
    <path d="M70.0,131.6 L74.9,127.0 L79.9,133.3 L84.8,125.5 L89.8,133.0 L94.7,131.9 L99.6,128.7 L104.6,135.6 L109.5,128.9 L114.4,133.5 L119.4,126.5 L124.3,124.3 L129.2,126.0 L134.2,128.6 L139.1,116.0 L144.1,115.3 L149.0,119.9 L153.9,124.4 L158.9,120.6 L163.8,120.7 L168.8,132.4 L173.7,123.8 L178.6,139.7 L183.6,136.2 L188.5,138.0 L193.4,140.3 L198.4,144.3 L203.3,151.1 L208.2,140.1 L213.2,142.1 L218.1,137.9 L223.1,128.2 L228.0,124.1 L232.9,110.6 L237.9,104.3 L242.8,100.9 L247.8,103.2 L252.7,96.7 L257.6,93.4 L262.6,96.8 L267.5,95.6 L272.4,94.8 L277.4,103.4 L282.3,103.8 L287.2,98.7 L292.2,104.0 L297.1,103.2 L302.1,107.3 L307.0,103.8 L311.9,95.7 L316.9,103.4 L321.8,89.8 L326.8,93.2 L331.7,98.3 L336.6,91.7 L341.6,100.0 L346.5,99.0 L351.4,114.7 L356.4,124.4 L361.3,131.0 L366.2,145.1 L371.2,147.1 L376.1,161.8 L381.1,168.9 L386.0,175.9 L390.9,179.9 L395.9,189.4 L400.8,193.5 L405.8,188.2 L410.7,191.2 L415.6,182.6 L420.6,191.1 L425.5,190.2 L430.4,195.4 L435.4,194.2 L440.3,188.6 L445.2,192.8 L450.2,200.1 L455.1,194.8 L460.1,204.5 L465.0,203.6 L469.9,205.3 L474.9,205.8 L479.8,215.7 L484.8,205.4 L489.7,204.4 L494.6,202.6 L499.6,204.8 L504.5,188.9 L509.4,189.4 L514.4,186.7 L519.3,188.5 L524.2,186.0 L529.2,186.8 L534.1,180.4 L539.1,185.7 L544.0,189.7 L548.9,202.8 L553.9,210.2 L558.8,205.3 L563.8,211.8 L568.7,217.9 L573.6,222.2 L578.6,228.8 L583.5,232.0 L588.4,228.2 L593.4,224.4 L598.3,229.4 L603.2,227.8 L608.2,229.7 L613.1,234.9 L618.1,231.6 L623.0,230.4 L627.9,233.9 L632.9,237.5 L637.8,231.9 L642.8,246.9 L647.7,247.9 L652.6,251.1 L657.6,250.6 L662.5,243.9 L667.4,241.2 L672.4,232.4 L677.3,233.6 L682.2,217.8 L687.2,209.0 L692.1,201.6 L697.1,191.3 L702.0,184.7 L706.9,172.3 L711.9,164.4 L716.8,160.8 L721.8,155.8 L726.7,156.5 L731.6,150.0 L736.6,161.0 L741.5,156.9 L746.4,150.0 L751.4,150.7 L756.3,150.7 L761.2,148.9 L766.2,142.5 L771.1,149.0 L776.1,146.8 L781.0,135.0 L785.9,130.9 L790.9,121.6 L795.8,119.0 L800.8,120.7 L805.7,119.5 L810.6,128.6 L815.6,122.0 L820.5,123.9 L825.4,141.5 L830.4,140.5 L835.3,140.0 L840.2,149.8 L845.2,145.7 L850.1,154.4 L855.1,160.8 L860.0,157.6 L860.0,225.6 L855.1,228.8 L850.1,222.4 L845.2,213.7 L840.2,217.8 L835.3,208.0 L830.4,208.5 L825.4,209.5 L820.5,191.9 L815.6,190.0 L810.6,196.6 L805.7,187.5 L800.8,188.7 L795.8,187.0 L790.9,189.6 L785.9,198.9 L781.0,203.0 L776.1,214.8 L771.1,217.0 L766.2,210.5 L761.2,216.9 L756.3,218.7 L751.4,218.7 L746.4,218.0 L741.5,224.9 L736.6,229.0 L731.6,218.0 L726.7,224.5 L721.8,223.8 L716.8,228.8 L711.9,232.4 L706.9,240.3 L702.0,252.7 L697.1,259.3 L692.1,269.6 L687.2,277.0 L682.2,285.8 L677.3,301.6 L672.4,300.4 L667.4,309.2 L662.5,311.9 L657.6,318.6 L652.6,319.1 L647.7,315.9 L642.8,314.9 L637.8,299.9 L632.9,305.5 L627.9,301.9 L623.0,298.4 L618.1,299.6 L613.1,302.9 L608.2,297.7 L603.2,295.8 L598.3,297.4 L593.4,292.4 L588.4,296.2 L583.5,300.0 L578.6,296.8 L573.6,290.2 L568.7,285.9 L563.8,279.8 L558.8,273.3 L553.9,278.2 L548.9,270.8 L544.0,257.7 L539.1,253.7 L534.1,248.4 L529.2,254.8 L524.2,254.0 L519.3,256.5 L514.4,254.7 L509.4,257.4 L504.5,256.9 L499.6,272.8 L494.6,270.6 L489.7,272.4 L484.8,273.4 L479.8,283.7 L474.9,273.8 L469.9,273.3 L465.0,271.6 L460.1,272.5 L455.1,262.8 L450.2,268.1 L445.2,260.8 L440.3,256.6 L435.4,262.2 L430.4,263.4 L425.5,258.2 L420.6,259.1 L415.6,250.6 L410.7,259.2 L405.8,256.2 L400.8,261.5 L395.9,257.4 L390.9,247.9 L386.0,243.9 L381.1,236.9 L376.1,229.8 L371.2,215.1 L366.2,213.1 L361.3,199.0 L356.4,192.4 L351.4,182.7 L346.5,167.0 L341.6,168.0 L336.6,159.7 L331.7,166.3 L326.8,161.2 L321.8,157.8 L316.9,171.4 L311.9,163.7 L307.0,171.8 L302.1,175.3 L297.1,171.2 L292.2,172.0 L287.2,166.7 L282.3,171.8 L277.4,171.4 L272.4,162.8 L267.5,163.6 L262.6,164.8 L257.6,161.4 L252.7,164.7 L247.8,171.2 L242.8,168.9 L237.9,172.3 L232.9,178.6 L228.0,192.1 L223.1,196.2 L218.1,205.9 L213.2,210.1 L208.2,208.1 L203.3,219.1 L198.4,212.3 L193.4,208.3 L188.5,206.0 L183.6,204.2 L178.6,207.7 L173.7,191.8 L168.8,200.4 L163.8,188.7 L158.9,188.6 L153.9,192.4 L149.0,187.9 L144.1,183.3 L139.1,184.0 L134.2,196.6 L129.2,194.0 L124.3,192.3 L119.4,194.5 L114.4,201.5 L109.5,196.9 L104.6,203.6 L99.6,196.7 L94.7,199.9 L89.8,201.0 L84.8,193.5 L79.9,201.3 L74.9,195.0 L70.0,199.6 Z" class="tube" />
  </g>
  <line x1="70" y1="360" x2="880" y2="360" class="axis" marker-end="url(#pbt-axis)" />
  <line x1="70" y1="360" x2="70" y2="20" class="axis" marker-end="url(#pbt-axis)" />
  <text x="885" y="385" class="axis-label">x</text>
  <text x="40" y="30" class="axis-label">y</text>
  <path d="M70.0,165.6 L74.9,161.0 L79.9,167.3 L84.8,159.5 L89.8,167.0 L94.7,165.9 L99.6,162.7 L104.6,169.6 L109.5,162.9 L114.4,167.5 L119.4,160.5 L124.3,158.3 L129.2,160.0 L134.2,162.6 L139.1,150.0 L144.1,149.3 L149.0,153.9 L153.9,158.4 L158.9,154.6 L163.8,154.7 L168.8,166.4 L173.7,157.8 L178.6,173.7 L183.6,170.2 L188.5,172.0 L193.4,174.3 L198.4,178.3 L203.3,185.1 L208.2,174.1 L213.2,176.1 L218.1,171.9 L223.1,162.2 L228.0,158.1 L232.9,144.6 L237.9,138.3 L242.8,134.9 L247.8,137.2 L252.7,130.7 L257.6,127.4 L262.6,130.8 L267.5,129.6 L272.4,128.8 L277.4,137.4 L282.3,137.8 L287.2,132.7 L292.2,138.0 L297.1,137.2 L302.1,141.3 L307.0,137.8 L311.9,129.7 L316.9,137.4 L321.8,123.8 L326.8,127.2 L331.7,132.3 L336.6,125.7 L341.6,134.0 L346.5,133.0 L351.4,148.7 L356.4,158.4 L361.3,165.0 L366.2,179.1 L371.2,181.1 L376.1,195.8 L381.1,202.9 L386.0,209.9 L390.9,213.9 L395.9,223.4 L400.8,227.5 L405.8,222.2 L410.7,225.2 L415.6,216.6 L420.6,225.1 L425.5,224.2 L430.4,229.4 L435.4,228.2 L440.3,222.6 L445.2,226.8 L450.2,234.1 L455.1,228.8 L460.1,238.5 L465.0,237.6 L469.9,239.3 L474.9,239.8 L479.8,249.7 L484.8,239.4 L489.7,238.4 L494.6,236.6 L499.6,238.8 L504.5,222.9 L509.4,223.4 L514.4,220.7 L519.3,222.5 L524.2,220.0 L529.2,220.8 L534.1,214.4 L539.1,219.7 L544.0,223.7 L548.9,236.8 L553.9,244.2 L558.8,239.3 L563.8,245.8 L568.7,251.9 L573.6,256.2 L578.6,262.8 L583.5,266.0 L588.4,262.2 L593.4,258.4 L598.3,263.4 L603.2,261.8 L608.2,263.7 L613.1,268.9 L618.1,265.6 L623.0,264.4 L627.9,267.9 L632.9,271.5 L637.8,265.9 L642.8,280.9 L647.7,281.9 L652.6,285.1 L657.6,284.6 L662.5,277.9 L667.4,275.2 L672.4,266.4 L677.3,267.6 L682.2,251.8 L687.2,243.0 L692.1,235.6 L697.1,225.3 L702.0,218.7 L706.9,206.3 L711.9,198.4 L716.8,194.8 L721.8,189.8 L726.7,190.5 L731.6,184.0 L736.6,195.0 L741.5,190.9 L746.4,184.0 L751.4,184.7 L756.3,184.7 L761.2,182.9 L766.2,176.5 L771.1,183.0 L776.1,180.8 L781.0,169.0 L785.9,164.9 L790.9,155.6 L795.8,153.0 L800.8,154.7 L805.7,153.5 L810.6,162.6 L815.6,156.0 L820.5,157.9 L825.4,175.5 L830.4,174.5 L835.3,174.0 L840.2,183.8 L845.2,179.7 L850.1,188.4 L855.1,194.8 L860.0,191.6" class="curve" />
  <g v-click="1">
    <line x1="178.6" y1="360" x2="178.6" y2="173.7" class="guide" />
    <line x1="70" y1="173.7" x2="178.6" y2="173.7" class="guide" />
    <circle cx="178.6" cy="173.7" r="7" class="example" />
    <line x1="415.6" y1="360" x2="415.6" y2="216.6" class="guide" />
    <line x1="70" y1="216.6" x2="415.6" y2="216.6" class="guide" />
    <circle cx="415.6" cy="216.6" r="7" class="example" />
    <line x1="652.6" y1="360" x2="652.6" y2="285.1" class="guide" />
    <line x1="70" y1="285.1" x2="652.6" y2="285.1" class="guide" />
    <circle cx="652.6" cy="285.1" r="7" class="example" />
    <line x1="790.9" y1="360" x2="790.9" y2="155.6" class="guide" />
    <line x1="70" y1="155.6" x2="790.9" y2="155.6" class="guide" />
    <circle cx="790.9" cy="155.6" r="7" class="example" />
  </g>
</svg>

<div class="pbt-legend">
  <span v-click="1"><i class="dot"></i> <b>Example-Based:</b> genau ein y für ein genaues x</span>
  <span v-click="2"><i class="swatch"></i> <b>Property:</b> ein Schlauch um die gesamte Kurve</span>
</div>

<style>
.pbt-title { color: #21E599; }
.pbt-chart { width: 100%; height: 330px; margin-top: 0.5rem; }
.pbt-chart .axis { stroke: #262626; stroke-width: 2.5; }
.pbt-chart .axis-label { font: italic 700 22px Rubik, sans-serif; fill: #262626; }
.pbt-chart .curve { fill: none; stroke: #262626; stroke-width: 3; stroke-linejoin: round; }
.pbt-chart .tube { fill: #21E599; fill-opacity: 0.35; stroke: #21E599; stroke-width: 2; }
.pbt-chart .guide { stroke: #FF5A5F; stroke-width: 1.5; stroke-dasharray: 5 5; }
.pbt-chart .example { fill: #FF5A5F; stroke: #fff; stroke-width: 2; }
.pbt-legend { display: flex; gap: 2.5rem; justify-content: center; font-size: 0.95rem; margin-top: 0.25rem; }
.pbt-legend i { display: inline-block; width: 14px; height: 14px; vertical-align: -2px; margin-right: 0.3rem; }
.pbt-legend .dot { border-radius: 50%; background: #FF5A5F; }
.pbt-legend .swatch { background: rgba(33, 229, 153, 0.45); border: 2px solid #21E599; }
</style>
