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
- Our baseline system was __Concrete one-sentence summary of the baseline system.__
- As a result, we got __28.42__ BLEU points on the shared dev set.

More details: [Report 1](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report1_MaLi.md)

## Baseline system manual evaluation
- We manually analyzed __40__ baseline translations. 
- Our main observation was that __there were several errors regarding sense of words, missing parts and incorrect forms__.
- Take a look at our the motivating example produced by baseline system:
    1) ID: 530
    2) Ungaris leiti, et peaaegu 96% lampidest on ohtlikud.
    3) In Hungary, nearly 96% of the lights were found to be hazardous.
    4) In Hungary, almost 96% of sheep were found to be dangerous.


More details: [Report 2](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report2_MaLi.md)

## Final system
- In order to address translation issues found after our manual evaluation we __used Transformer model to reduce sense errors, different sizes of beam search to find more appropriate words and replaced BPE with wordpieces to avoid splitting errors__. 
- The trained system gave us __YOUR_BLEU_ON_ACCURAT(!!!)DEV_SET__ BLEU points on the shared dev set that means __SMALL/BIG/ZERO INCREASE__ over the baseline. 

More details: [Report 3](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report3_MaLi.md), [Report 4](https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/reports/Report4_MaLi.md)

## Final system manual evaluation
- Generally speaking, __the system seems to got better. Looking at different sentences, fluency and sense has been improved and some missing words has been replaced.__
- Lets now look at how does our Motivating example looks like with our final system:
    1) ID: 530
    2) Ungaris leiti, et peaaegu 96% lampidest on ohtlikud.
    3) In Hungary, nearly 96% of the lights were found to be hazardous.
    4) In Hungary, almost 96% of sheep were found to be dangerous.
    5) In Hungary, almost 96% of the lamps were found to be dangerous., 

- As a result you can see that __the final system better understood the sense of words__.

Do not forget to check our poster: [__POSTER_LINK__]

## What we also tried or wanted to try
*Describe_what_you successfully tried but did not include in the final system for any (technical/other reason)
Include concrete __bleu results/manual evaluation results__ if you have them (use one sentence here or leave it empty)*

We also wanted to try back translation to improve quality and fluency of the translation. This was not possible because of schedule reasons. 


## Final words
- __1st_sentence: your_results_on_the_test_set_and_interpretation_(feel_later)__
- __2nd_sentence: what_were_the_general_difficulties__
- __3rd_sentence: what_you_have_learnt__


## Team members:
1. [adfors](https://github.com/adfors)
2. [mariellee](https://github.com/mariellee)

Project board: [Project board A](https://github.com/mt2017-tartu-shared-task/nmt-system-A/projects/1)

