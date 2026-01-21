# Case: Long Dependency Chain in Legal Summary

## Original Text (Newsweek)
> "In that decision, the court limited the government’s ability to strip U.S. citizenship from immigrants for lying during the naturalization process, with Justice Elena Kagan writing for the court that allowing the government to strip citizenship for minor lies would give prosecutors 'nearly limitless leverage—and afford newly naturalized Americans precious little security.'"
> (source: https://www.newsweek.com/can-trump-revoke-citizenship-of-migrants-for-fraud-its-complicated-11386773)

## Problem
- **Syntactic Overload**: The main clause is weighed down by multiple prepositional phrases ("ability to strip... from... for..."), making it hard to track the core legal limit being discussed.
- **Structural Imbalance**: The "with..." clause adds a massive amount of new information (a quote and its justification) instead of being a separate sentence, leading to "Cognitive Overload."
- **Variable Resolution**: The definition of "lying" shifts from a general term to "minor lies" only at the very end, causing a mid-sentence re-evaluation of the logic.

## Refactored Text
> "In that decision, the court restricted the government's power to denaturalize immigrants for lying. Writing for the court, Justice Elena Kagan argued that allowing such measures for **minor lies** would grant prosecutors 'nearly limitless leverage' and undermine the security of new citizens."

## Impact on AI/Reader
- **Human Reader**: Must hold multiple conditions in memory before reaching the logical conclusion.
- **AI**: An AI may struggle to correctly associate the "limitless leverage" with the specific "minor lies" condition due to the distance between the terms and the complexity of the sentence tree.

## Gemini's Logic Audit
This is a "Stack Overflow" of syntax. In technical writing, when the "Subject-Verb-Object" is separated by too many modifiers, the reliability of the communication drops. This sentence structure prioritizes "compactness" over "clarity," which is a common failure in journalistic summaries.
