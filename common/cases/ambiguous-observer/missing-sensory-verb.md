# Case study: Missing Sensory/Observational Context

## Target Text
> "Many as soon as they reached the emergency beds... direct shots to the heads of the young people, to their hearts as well. Many of them didn't even make it to the hospital."
> (Source: BBC News - Gaza hospital coverage, https://www.bbc.com/news/articles/cm2jek15m8no)

## The "Bug" (Logical Ambiguity)
1. **Implicit Observer**: The phrase "direct shots to the heads..." lacks a verb or an observer. It is unclear if the speaker *witnessed* the shooting or is *inferring* the cause from the wounds on the beds.
2. **Translation Bias**: In the Japanese translation, this is rendered as a factual statement ("Direct hits occurred..."), losing the nuance that this is a description of the victims arriving at the hospital. 
3. **Logic Gap**: There is a missing link between "reaching the emergency beds" and "direct shots." Without a sensory verb (e.g., "we saw," "it was clear that"), the logical connection is purely based on the reader's imagination.

## Revised Text (Architecturally Sound)
To clarify the source of the information and the logical flow:

> "Many as soon as they reached the emergency beds. (pause) Direct shots to the heads of the young people, to their hearts as well. Many of them didn't even make it to the hospital."

**Why this is better:**
- **Explicit Source**: It clarifies that the "direct shots" are an observation made upon reaching the beds.
- **Robust Logic**: It connects the physical location (emergency beds) with the condition of the patients using an observational bridge, preventing AI from misinterpreting it as a general statement about the battlefield.

## Detection Rule for PAD-linter
- **Rule: Implicit Evidence Check**
- Flag noun-heavy descriptive phrases that lack a clear "Observer" or "Sensory Verb" when describing causal events.
- Ensure that "Effect" (wounds) and "Cause" (direct shots) are linked by a verb of observation or inference.
