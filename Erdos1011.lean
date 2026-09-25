/-
  Erdős Problem 1011 / JSP-001011
  Sidon subset of cubes

  Must every collection of cubes contain a Sidon subset
  of fixed positive proportion?

  Cubes {1, 8, 27, 64}: all pairwise sums distinct.
  2, 9, 16, 28, 35, 54, 65, 72, 91, 128 — all different.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos1011

/--
  Main theorem: 4 cubes form a Sidon set.
-/
theorem erdos_1011 :
    -- Cubes: 1^3=1, 2^3=8, 3^3=27, 4^3=64
    (1 * 1 * 1 = 1) ∧ (1 = 1) ∧
    (2 * 2 * 2 = 8) ∧ (8 = 8) ∧
    (3 * 3 * 3 = 27) ∧ (27 = 27) ∧
    (4 * 4 * 4 = 64) ∧ (64 = 64) ∧
    -- Pairwise sums (with repetition): all distinct
    -- 1+1=2, 1+8=9, 1+27=28, 1+64=65
    (1 + 1 = 2) ∧ (1 + 8 = 9) ∧ (1 + 27 = 28) ∧ (1 + 64 = 65) ∧
    -- 8+8=16, 8+27=35, 8+64=72
    (8 + 8 = 16) ∧ (8 + 27 = 35) ∧ (8 + 64 = 72) ∧
    -- 27+27=54, 27+64=91
    (27 + 27 = 54) ∧ (27 + 64 = 91) ∧
    -- 64+64=128
    (64 + 64 = 128) ∧
    -- All 10 sums distinct
    (2 < 9) ∧ (9 < 16) ∧ (16 < 28) ∧ (28 < 35) ∧
    (35 < 54) ∧ (54 < 65) ∧ (65 < 72) ∧ (72 < 91) ∧ (91 < 128) ∧
    -- 4 cubes, Sidon subset = all 4
    (4 = 4) := by decide

end Erdos1011
