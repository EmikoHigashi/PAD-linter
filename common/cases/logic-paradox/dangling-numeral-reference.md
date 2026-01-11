# Case study: Dangling Numeral Reference

## Target Text
> "Cynthia Erivo won’t be attending this year’s Golden Globes ceremony because she’s being pulled in several different directions — 23, to be exact."
> (Source: CNN - Golden Globes 2026 Live Coverage)

## The "Bug" (Contextual Logic Error)
1. **Dangling Reference**: The number "23" is intended to quantify the noun "directions" mentioned earlier. 
2. **Ellipsis Failure**: In natural language, we often omit the noun after a number (Ellipsis). However, without a strong logical link, machine translation (MT) or AI often misinterprets the "type" of the number.
3. **Mismatched Category Injection**: In the Japanese translation, "23" was incorrectly tagged as "age" (23歳), failing to inherit the "direction/task" category from the preceding clause.

## Revised Text (Architecturally Sound)
To prevent logical misinterpretation, the unit should be explicit:

> "Cynthia Erivo won’t be attending this year’s Golden Globes ceremony because she’s being pulled in **23 different directions**, to be exact."

**Why this is better:**
- By moving the specific number "23" next to the noun "directions," the **dependency is clear.**
- It eliminates the "dangling" state of the numeral, ensuring that any translation engine or AI identifies "23" as a count of "directions," not "age."

## Detection Rule for PAD-linter
- **Rule: Numeral-Noun Dependency Check**
- When a numeral appears after a dash or as a standalone modifier, verify the "unit" or "category" of the most recent plural noun.
- Flag if the numeral is likely to be misinterpreted due to a lack of explicit units (especially when separated from the noun by a dash or comma).
