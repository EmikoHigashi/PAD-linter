# Case study: Undefined Entity Reference

## Target Text
> "The US Department of Agriculture first promoted the food pyramid in 1992... Every five years, HHS and the USDA update the dietary guidelines."
> (Source: CNN Health, 2026, https://edition.cnn.com/2026/01/08/health/what-to-eat-experts-dietary-guidelines-wellness)

## The "Bug" (Contextual Jump)
1. **Undefined Variable**: The first sentence establishes the "USDA" as the sole actor. The second sentence suddenly introduces "HHS" without defining its role or relationship to the USDA.
2. **Missing Temporal Logic**: It fails to explain *when* or *why* the responsibility shifted from the USDA alone (1992) to a joint effort with HHS.
3. **Cognitive Hiccup**: The reader is forced to pause and wonder, "What is HHS, and where did it come from in this story?"

## Revised Text (Architecturally Sound)
Establish the partnership before describing the recurring action:

> "The US Department of Agriculture first promoted the food pyramid in 1992... **Today, the USDA works alongside the Department of Health and Human Services (HHS)** to update these dietary guidelines every five years."

**Why this is better:**
- **Proper Initialization**: The new entity (HHS) is introduced and its relationship to the known entity (USDA) is defined.
- **Traceable Logic**: The transition from a 1992 historical fact to a modern recurring process is bridged smoothly.

## Detection Rule for PAD-linter
- **Rule: First-Mention Definition Check**
- Flag acronyms or entities that appear in a collaborative context ("A and B") if "B" has not been previously introduced or defined in the preceding paragraph.
- Suggest a "Bridge Sentence" to define the relationship.
