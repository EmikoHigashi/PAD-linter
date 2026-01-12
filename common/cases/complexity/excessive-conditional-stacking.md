# Case study: Excessive Conditional Stacking

## Target Text
> "If you’re eating several servings of fruits and vegetables daily, avoiding ultraprocessed foods and baking your chicken instead of frying it, you’re already following some of the newly updated Dietary Guidelines for Americans."
> (Source: CNN Health, 2026, https://edition.cnn.com/2026/01/08/health/what-to-eat-experts-dietary-guidelines-wellness)

## The "Bug" (Cognitive Overload)
1. **Stacked Conditions**: The "If" clause contains three distinct actions plus a sub-comparison ("instead of frying it"). This forces the reader to hold four pieces of information in active memory before reaching the main point.
2. **Ambiguous Delimiters**: The comma after "daily" and "foods" acts as a list separator, but the final comma before "you’re" acts as a structural boundary. The visual similarity delays parsing.
3. **Distance to Main Subject**: The logical "Action" is buried under a mountain of "Conditions."

## Revised Text (Architecturally Sound)
Break the stack into a clear premise and a conclusion:

> "You are already following several of the updated Dietary Guidelines for Americans **if** you eat daily servings of fruits and vegetables, avoid ultraprocessed foods, and choose to bake rather than fry your chicken."

**Why this is better:**
- **Goal-First Structure**: By putting the main conclusion first, the reader knows *why* they are reading the list of conditions.
- **Flattened Logic**: The "If" clause is now at the end, acting as a supporting list rather than a hurdle to jump over.

## Detection Rule for PAD-linter
- **Rule: Conditional Depth Limit**
- Flag sentences where the `If` clause exceeds 15 words or contains more than two `and/or` separators before the main subject.
- Suggest moving the main clause to the beginning (Goal-Oriented Syntax).

## Root Cause of Confusion:  
The sentence mixes "food categories" (fruits/veggies) with "culinary techniques" (baking/frying). This lack of categorical parallelism causes the reader to stumble when the topic shifts abruptly from produce to poultry.
