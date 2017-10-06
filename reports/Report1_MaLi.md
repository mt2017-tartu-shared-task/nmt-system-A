# Milestone 1: Hand in the baseline system and translation  [Report]
MaLi team:
 * @adfors
 * @mariellee


## Our project board:
![Alt text](https://owncloud.ut.ee/owncloud/index.php/s/Vsdc5IaE5foUcFb "project board A")

## This milestone tasks description:
### Corpus Preparation
Starting from raw data, we applied following preprocessing steps:
* corpora concatenating: we got one big parallel text corpus of __N__ lines 
* data shuffling (https://owncloud.ut.ee/owncloud/index.php/s/37j7B1KRGr4bYXu) Link to shuffled data): to feed sentences to NMT system later in the random order  
* data splitting (https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/scripts/01_splitter.sh): __16 051 438__ training examples, __2 000 000__ test examples, and __1 000 000__ development examples


* BPE (https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/scripts/05_bpe.sh): we used joint vocabulary of size __45 000__

We used [Moses](http://www.statmt.org/moses/) scripts to do basic preprocessing, and [BPE](https://github.com/rsennrich/subword-nmt) for the subword segmentation. 

### Model Training
We used 1 Tesla P100 GPU Machine provided by [HPC center of the University of Tartu](https://www.hpc.ut.ee/en_US/web/guest/home) to train our model with vocablary of size __30 000__. The model we trained is the default [OpenNMT-py](https://github.com/OpenNMT/OpenNMT-py) model, which consists of a 2-layer LSTM with 500 hidden units on both the encoder/decoder.

Our model is located here (https://owncloud.ut.ee/owncloud/index.php/s/LCWSx9efrc3uBQu)

We had trained our best model for ~__7__ days, __0__ epochs. Development set perplexity was __N__. We __waited to the end__ to stop the training process. You can find the script we used to run training here (https://github.com/mt2017-tartu-shared-task/nmt-system-A/blob/master/scripts/08_nmt_train.sh).

### Translating and Evaluating Results
We performed an inference and got unpostprocessed English hyps file. 

We used this file, processed reference file, and BLEU metric to evaluate the translation performance of our model, and got __26.81__ points.
 
