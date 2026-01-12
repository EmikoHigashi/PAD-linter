# Case study: Misplaced Relative Clause

## Target Text
> "Elsewhere at Sunday AI they've come up with a neat solution to the data collection challenge that seems to be working very well."
> (Source: bbc news, https://www.bbc.com/news/articles/clyg63e3mq4o)

## The "Bug" (Structural Ambiguity)
1. **Dangling Modifier**: The relative clause `that seems to be working very well` is positioned after two nouns: "solution" and "challenge." 
2. **Logic Conflict**: Syntactically, the clause attaches to "challenge" (the nearest noun), but logically it is intended to describe the "solution." 
3. **Translation Failure**: AI/Machine Translation often links the "working very well" attribute to the "challenge," resulting in nonsense like "a challenge that functions well."

## Revised Text (Architecturally Sound)
To eliminate ambiguity, move the attribute closer to its object or use a clearer structure:

> "Elsewhere at Sunday AI, they've come up with **a neat, seemingly effective solution** to the data collection challenge."
> or
> "Elsewhere at Sunday AI, they've come up with a neat solution to the data collection challenge—**one that seems to be working very well.**"

**Why this is better:**
- **Zero Ambiguity**: The first revision uses adjectives before the noun "solution," locking the attribute to the correct object. The second uses an appositive ("one that...") to explicitly refer back to the solution.
- **Improved Parsing**: It prevents the "logic-gap" where a system might think the *problem* (challenge) is what's *working well*.

## Detection Rule for PAD-linter
- **Rule: Remote Attribute Attachment Check**
- Flag relative clauses (`that`, `which`) that follow a "Noun + Preposition + Noun" structure.
- Check if the attribute's semantic type matches the nearest noun; if there's a mismatch or a stronger candidate noun earlier, suggest reordering.
