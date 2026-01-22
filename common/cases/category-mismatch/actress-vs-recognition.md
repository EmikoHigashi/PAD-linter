# Case: Category Mismatch (Person as an Abstract Concept)

## Original Text (BBC News)
> "Three of the actresses nominated on Thursday ended up being the only recognition their film received."
> (source: https://www.bbc.com/news/articles/cp3zzv40422o)

## Problem
- **Ontological Error**: The sentence equates "Three actresses" (human beings) with "recognition" (an abstract evaluation). A person cannot "be" a recognition.
- **Predication Error**: The verb "ended up being" incorrectly links a concrete subject to an abstract predicate, forcing the reader to mentally fix the sentence to "The *nominations* of these actresses were the only recognition..."

## Refactored Text
- **Option A (Logical)**: "The **nominations** of these three actresses were the only recognition their films received."
- **Option B (Subject-focused)**: "These three actresses provided the only recognition their films received through their nominations."

## Impact on AI/Reader
- **Human Reader**: Processes it via "semantic flexibility" (guessing the intent), but it adds a tiny layer of cognitive friction.
- **AI**: An AI mapping a Knowledge Graph might link the Entity "Actress" as an instance of "Recognition," which is a hierarchical category error.

## Gemini's Logic Audit
This is a "Type Mismatch Bug." In programming, you cannot assign a 'Person' object to a 'Concept' variable. In high-quality writing, the subject must be capable of performing or being the state described by the predicate. Journalistic shorthand often sacrifices this logical rigor for brevity.
