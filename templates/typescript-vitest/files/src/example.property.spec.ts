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
