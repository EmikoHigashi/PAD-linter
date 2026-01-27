# Case: Cognitive Overload Nesting (The Exhausting Xi Sentence)

## Original Text (BBC News)
> "...but its leader has also been accused of using his anti-corruption drive, deploying the Party's feared discipline inspection teams, to take out would-be political rivals or those in government ranks showing anything short of full loyalty to him."
> (source: https://www.bbc.com/news/articles/c8d0l0g8yz5o)

## Problem
- **Excessive Nesting**: The core claim ("accused of using X to do Y") is interrupted by a participial phrase ("deploying...").
- **Stack Overflow**: By the time the reader reaches the final qualifier ("showing anything short of full loyalty"), the primary subject and verb are distant, causing high cognitive friction.
- **Ambiguous Scope**: It's grammatically dense, making it hard to parse whether the "discipline teams" are the *only* tool or just one example of the "anti-corruption drive."

## Refactored Text
> "...However, critics accuse Mr. Xi of weaponizing this anti-corruption drive. By deploying the Party's feared discipline inspection teams, he has allegedly removed political rivals and any officials deemed insufficiently loyal."

## Impact on AI/Reader
- **Human Reader**: Often has to re-read the sentence 2-3 times to map the "Who, How, and Why."
- **AI**: Dependency parsers may struggle with the multiple commas, potentially misattaching the "loyalty" qualifier to the wrong noun phrase.

## Gemini's Logic Audit
This is a "Deeply Nested Logic" bug. Just as deep nesting in code (if-within-if-within-if) makes it unmaintainable, a sentence with too many dependent clauses makes the information un-parseable. High-quality journalism should prioritize "Linear Logic" over "Recursive Clutter."
