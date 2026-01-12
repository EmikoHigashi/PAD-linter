# Case study: Unclear Collective Scope & Semantic Mismatch

## Target Text
> "Volunteers hope to bring the 15 stranded whales together in a 'nice tight group' to help them refamiliarise with one another and swim out together..."
> (Source: BBC News, 2026, https://www.bbc.com/news/articles/c24g1lgqrvpo)

## The "Bug" (Double Ambiguity)
1. **Scope Ambiguity (`one another`)**: It is unclear who "one another" refers to. Does it mean the 15 stranded individuals interacting with each other, or these individuals interacting with the newly formed "nice tight group" (the collective)?
2. **Precondition Failure (`refamiliarise`)**: The verb "refamiliarise" implies a pre-existing relationship. Logically, this code fails if the 15 whales are not from the same pod. It's a "semantic mismatch" where a social bond is assumed without evidence.
3. **Anthropomorphic Projection**: Terms like "nice tight group" and "refamiliarise" project human social values onto wild animals, masking the biological reality with emotional language.

## Revised Text (Architecturally Sound)
To resolve the ambiguity, use precise biological terms and clarify the subjects:

> "Volunteers are grouping the 15 stranded whales closely together to **stimulate their collective schooling instinct**, hoping they will coordinate their movements and swim out to sea as a unit."

**Why this is better:**
- **Zero Ambiguity**: Replaces "refamiliarise with one another" with "coordinate their movements," which describes a physical, observable action regardless of prior relationship.
- **Logic Over Emotion**: Shifts the focus from human-centric "niceness" to biological "schooling instinct."

## Detection Rule for PAD-linter
- **Rule: Implicit Social Precondition Check**
- Flag verbs that imply a prior state (e.g., "re-", "again") if that state hasn't been established for the entities involved.
- **Rule: Collection-vs-Individual Scope**
- Flag "one another" or "each other" when multiple collective nouns (e.g., "15 whales", "a group") are active in the same context to ensure the pointer is clear.
