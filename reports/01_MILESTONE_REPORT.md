#### The first report:

Firstly, we concatenated all data and shuffled it.
The obtained file is located in [Owncloud](https://owncloud.ut.ee/owncloud/index.php/s/37j7B1KRGr4bYXu).
It contains 19 051 439 tokens.

After that, we split data into test (2 000 000), dev(1 000 000) and train (the rest tokens).

Before a translation process we applied the following preprocessing steps by using [Moses scripts](http://www.statmt.org/moses/?n=Moses.Baseline):

* tokenisation: add spaces between words and punctuation
* truecasing: convert words into their most probable casing
* cleaning: remove empty and long sentences (our limit is 75 for train set)

Then we applied Byte Pair Encoding [BPE](https://github.com/rsennrich/subword-nmt).

After that, we applied [OpenNMT-py scripts](https://github.com/OpenNMT/OpenNMT-py) to train our models.

To evaluate our model we used BLEU score and got: 26.81

Our model is located in [Owncloud](https://owncloud.ut.ee/owncloud/index.php/s/VE768Fh0a058o36).
Translation of test sentences is stored [Owncloud](https://owncloud.ut.ee/owncloud/index.php/s/04fviH9C0uu4LLH).


