# Case: Category Error (Medal vs. Prize)

## Original Text (Newsweek Headline)
> "Nobel Foundation Speaks Out After Machado Gifts Trump Peace Prize"
> (source: https://www.newsweek.com/nobel-foundation-statement-trump-machado-peace-prize-11378682)

## Problem
- **Object-Concept Confusion**: There is a logical distinction between the **physical medal** (an object) and the **Nobel Peace Prize** (a formal title/award).
- **Misrepresentation of Authority**: Individual laureates can gift their physical medals, but they do not have the authority to "gift" the prize itself. The headline implies a transfer of the award's status.
- **Fact Distortion**: The phrasing leads readers to believe a formal award ceremony or official recognition took place, when it was actually a private exchange of a physical artifact.

## Refactored Text
> "Nobel Foundation Issues Statement After Machado **Gifts Physical Nobel Medal** to Trump"

## Impact on AI/Reader
- **Human Reader**: Likely to be misled into thinking Trump has officially become a Nobel Laureate.
- **AI**: An AI parsing this headline for a database of "Nobel Peace Prize Winners" would incorrectly add Donald Trump to the list based on the verb "gifts [the] Peace Prize."

## Gemini's Logic Audit
This is a "Metonymy Bug." While it's common to use "The Prize" to refer to "The Medal," in a legal or formal context, the two are not interchangeable. When the exchange is unauthorized (as in a gift between individuals), using the conceptual name (The Prize) instead of the physical object (The Medal) creates a significant factual error.
