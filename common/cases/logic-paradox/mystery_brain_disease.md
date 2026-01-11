# Case study: Ambiguous Logic in Headlines

## Target Text
> "'The answer cannot be nothing': The battle over Canada's mystery brain disease"
> (Source: BBC News)

## The "Bug" (Why this is spaghetti)
1. **Cognitive Overhead**: The use of double negatives ("cannot be nothing") forces the reader to perform extra logical processing to reach a simple conclusion ("something must exist").
2. **Dangling Reference**: "The answer" is introduced as a primary object, but it points to an undefined set. In software terms, this is a "Null Pointer" being treated as a valid return value.

## Detection Rule for PAD-linter
- Flag double negatives in declarative sentences.
- Check if the Subject (The answer) has a corresponding Definition in the context.
