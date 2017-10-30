# Milestone 3: Report on planned modifications
MaLi team:
 * adfors (https://github.com/adfors)
 * mariellee (https://github.com/mariellee)

### Our project board
![Project board](/reports/Screenshot_pba_03.PNG?raw=true "project board A")

### Overview main errors
1. Syntax/word order 
2. Incorrect grammar tense
3. Wrong translations regarding sense
4. Missing words
5. Word-by-word translations

### Planned modifications
In the following 4 planned modifications are explained. 

##### Back translation (optional)
We had several errors regarding the syntax or word order. The example below makes the errors clear. 

1. ID: 161
2. *Lühike ent vägivaldne Araabia-Iisraeli sõda 1973. aasta oktoobris toob Euroopas kaasa energiakriisi ning majandusprobleemid.*
3. *The short, yet brutal, Arab-Israeli war of October 1973 result in an energy crisis and economic problems __in Europe__.*
4. *A short but violent Arab war in October 1973 brings the energy crisis __into Europe__ and economic problems.*

Back translation could improve the quality/fluency of our translation by fixing this kind of problem. Back translation is an automatic translation of a monolingual target text. In our case we want to look for another english corpus to get more data and "back translate" this on into estonian. Afterwards the translation should be mixed up with the existing human-translation of the estonian corpus. One advantage would be that there are no changes to our neural network architecture are needed, it is easily appliable. 

##### Replace CPE with "wordpieces" (Deadline: )
The translation analysis shows that there are a few errors regarding BPE splitting. The estonian word "lampidest" in the following example has been faslc translated to sheep because of subword "lamp". 

1. ID: 530
2. *Ungaris leiti, et peaaegu 96% __lamp__ idest on ohtlikud.*
3. *In Hungary, nearly 96% of the lights were found to be hazardous.*
4. *In Hungary, almost 96% of __sheep__ were found to be dangerous.*

To fix this problem we want to try another splitting algorithm. Therefore we picked "wordpiece", which is a variant of BPE. The final vocabulary size is fixed. 

##### Hyperparameters - Beam Search (Deadline: )
We want to make changes to the hyperparameters as well. In the following example "inconvenience" was translated to "work", which does not make sense in this context.  

1. ID: 182
2. *Riikidevaheline reisimine on lihtsam, kuna enam pole rahavahetuse kulu ja vaeva.*
3. *Travel between euro countries is easier because the costs and __inconvenience__ of changing money have disappeared.*
4. *Transnational travel is easier, since there is no more money for money and __work__.*

Changing beam search size from 5 to 10 could help to find more appropriate words. The reason for that is, that a size of 10 could involve "5 more candidates" which are still close to the "candidate" with the most score and a translation which might be better. 

##### Transformer model (Deadline: )
The transfromer model replaces recurrent layers with entirely self-attention. Each word will compared to every other word in the sentence. This allows finding dependencies between distant positions. In our case, we had a problem regarding genders. The model might help to get correct gender (like he or she) directly from the context. It could also fix the word-by-word translation problem shown below (black mass). Another advantage would be that it requires less time to train. 

1. ID: 801
2. *Nad seetõttu postuleerivad nähtamatu __musta massi__ olemasolu, mis on vastastikmõjus muu mateeriaga ainult selle gravitatsiooni kaudu, ja sisaldab väga stabiilseid, seega ka väga kergeid osakesi.*
3. *They therefore postulate the existence of an invisible dark matter that only interacts with the rest of matter by its gravitation, and consists of very stable, and therefore very light, particles.*
4. *They are therefore exposed to the presence of an invisible __black mass__ that is in interaction with other matter only through its gravity, and contains very stable, so very mild particles.*

