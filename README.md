# __MaLi__ In-class Machine Translation Shared Task 2017 Submission
This repository is a result of our participation in the shared task.
We went through the process of building, analyzing, and improving the neural machine translation system.

Poster: [link]()

The shared task was for Estonian-English language pair.
It included working with ~19.000.000 sentence pairs.

Shared task main page: [link](https://github.com/mt2017-tartu-shared-task)
Shared task on course page: [link](https://courses.cs.ut.ee/2017/MT/fall/Main/SharedTask)

Sections below summarize key milestones we went through.

##  Baseline system
- Our baseline system was the default OpenNMT-py model, which consists of a 2-layer LSTM with 500 hidden units on both the encoder/decoder.
- As a result, we got __23.40__ BLEU points on the shared dev set.

More details: [Report 1](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report1_MaLi.md)

## Baseline system manual evaluation
- We manually analyzed __40__ baseline translations.
- Our main observation was that __there were several errors regarding sense of words, missing parts and incorrect forms__.
- Take a look at our examples produced by baseline system:

    __The first example:__

    Source: Ungaris leiti, et peaaegu 96% lampidest on ohtlikud.

    Human: In Hungary, nearly 96% of the __lights__ were found to be hazardous.

    Baseline: In Hungary, almost 96% of __sheep__ were found to be dangerous.

    Res: As we can see, we got sheep instead of lights.

    __The second example:__

    Source: 4.otsustamine, millal midagi vaadata ja mida vaadata.

    Human: 4.deciding when to see something, and what to see.

    Baseline: Four.

    Res: All words are missed after the dot mark.


More details: [Report 2](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report2_MaLi.md)

## Final systems
- In order to address translation issues found after our manual evaluation we __used sockeye implementation of Transformer model to reduce sense errors, different sizes of beam search to find more appropriate words,  and replaced dot marks by special symbol to keep words after dot in the middle of sentence__.
- At the end we have two models: with BPE splitting and SentencePieces splitting. The model with BPE shows better BLEU than the model with sentencepieces. Perhaps this is due to the number of splitting (70000 for BPE and 50000 for SentencePieces).
- The best trained system gave us __26.88__ BLEU points on the shared dev set that means significant increase over the baseline.

More details: [Report 3](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report3_MaLi.md), [Report 4](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report4_MaLi.md)

## Final system manual evaluation
- Generally speaking, __the system seems to got better. Looking at different sentences, fluency and sense has been improved and some missing words has been replaced.__
- Lets now look at how our examples looks with the final systems:

    __The first example:__

    Source: Ungaris leiti, et peaaegu 96% lampidest on ohtlikud.

    Human: In Hungary, nearly 96% of the _lights_ were found to be hazardous.

    Baseline: In Hungary, almost 96% of _sheep_ were found to be dangerous.

    Model with SentencePiece: In Hungary, almost 96% of the _lamps_ were found to be dangerous.

    Model with BPE: In Hungary, almost 96% of _sheep_ were found to be dangerous.

    __The second example:__

    Source: 4.otsustamine, millal midagi vaadata ja mida vaadata.

    Human: 4.deciding when to see something, and what to see.

    Baseline: Four.

    Model with SentencePiece: 4. decide when to look at something and watch what.

    Model with BPE: Deciding when to look at something and look at.


- As a result you can see that __the final system with sentencepieces better understood the sense of words; both systems translated the whole sentence not only the part of it__.

Do not forget to check our poster: [__POSTER_LINK__]

## What we also tried or wanted to try

We also wanted to try back translation to improve quality and fluency of the translation. This was not possible because of schedule reasons. Also, we wanted to run model with larger number of wordsegments, but we did not have powerful enough servers (our machines) and it was the huge line to HPC machines.


## Final words
- New translations look better and more interpretable than the translation with the baseline model.
- The main difficulties: a huge queue to HPC machines, sometimes human translation was not correct (see example in [Report 2](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report2_MaLi.md))
- We have built our models by using sockeye and OpenNMT-py, we used with BPE and sentencepiece splitting, we used Moses scripts, so we learned a lot of new things.


## Team members:
1. [adfors](https://github.com/adfors)
2. [mariellee](https://github.com/mariellee)

Project board: [Project board A](https://github.com/mt2017-tartu-shared-task/nmt-system-A/projects/1)

