# Milestone 3: Intermediate report
MaLi team:
 * adfors (https://github.com/adfors)
 * mariellee (https://github.com/mariellee)

### Our project board
![Project board](/reports/Screenshot_pba_04.PNG?raw=true "project board A")

### Results changing beam size
We reached some improvements regarding the changes of the beam size even though the bleu score does not increase. Following examples show the improvements. Machine_1 shows the originally translation and Machine_2 shows the translation after changing beam search size.

##### Example 1
* Original:* Telefonikõned, internetiühendus ja lennureisid odavnevad.
* Human:* Phone calls, Internet access and air travel are __cheaper__.
* Machine_1:* Phone calls, Internet connections, and air travel.
* Machine_2:* Phone calls, internet connections, and flights __cheap__.
New translation has a word "cheap" as an original sentence and miss a verb. In the original there is no verb "on" as well.


##### Example 2
* Original:* Esiteks vaatab see osakesi mitte kui punktikesi, vaid kui elemente, mida saab võrrelda äärmiselt
väikeste stringidega, mis on 10- 35 meetrit pikad (arvule 1 eelneb 35 nulli, esimene neist on vasakul pool
kooma).
* Human:* First, it views __particles__ not as points but as elements that can be compared to extremely small
strings, in the order of 10 - 35 meters long (1 preceded by 35 zeroes, the first being to the left of the
decimal point).
* Machine_1:* First, it looks at the __particulates__, but as the elements that can be compared to the extremely
small strings that are between 10 and 35 metres long (in number 1 preceding 35 zero, the first one is on
the left).
* Machine_2:* Firstly , it looks at the __particles__, but as the elements that can be compared to the extremely
small strings that are between 10 and 35 metres long ( in number 1 preceding 35 zero, the first one is on
the left).
New translation has "particles" that is better than "particulates".




### Results Transformer model
We used Sockeye and default parameters to implement our Transformer model. We reached BLEU score ~20. A further possible improvement might be changing the default parameters. The following examples show the changes.

##### Example 1
* Original:* PRK koostamisel tuleb arvesse võtta iga rahastamismeetodi nõudeid ja
kirjeldada asjakohaseid alamprotsesse.
* Human:* When producing PIM different requirements of each funding method must
be taken into account, relevant sub processes should be described.
* Machine_1:* The PRK shall take into account the requirements of each financing
method and describe the relevant subprocesses.
* Machine_2:* The PRK should take into account the requirements of each financial
method and describe the relevant subprocesses.
Both translations are almost the same.

##### Example 2
* Original:* Need juhendid peaksid olema heaks aluseks sellistele järgmistele
sammudele nagu töökirjelduste kirjutamine ja pädevusvaldkondade
väljaselgitamine.
* Human:* These guides should be good basis for the next steps like writing job
descriptions and determining __competence__ areas.
* Machine_1:* These guidelines should serve as a basis for the following steps, such
as writing and identifying the work descriptions.
* Machine_2:* These instructions should serve as a basis for the following steps
such as the descriptors and __competences__.
By using a new approach we got the word "competence".


##### Example 3
* Original:* Pädevuste enesehindamisse on kaasatud kogu personal.
* Human:* When making the self assessment of competences the whole staff is
involved.
* Machine_1:* The self-evaluation of the competences is the same as that of the
__European Union__.
* Machine_2:* All personnel are involved in self-assessment.
The new translation looks better and almost correct. There is no "fantom" words like "European Union".

##### Example 4
* Original:* Tagamaks Läti edukas liitumine euroalaga,
* Human:* To ensure successful accession __of Latvia to the Euro zone__:
* Machine_1:* In order to ensure that this is not the case,
* Machine_2:* The successful accession __of Latvia to the euro area__,
The new translation looks better than the translation of the baseline model.

##### Example 5
* Original:* Energia ostmise, tootmise, ülekandmise, jaotamise ja turustamise tagamiseks võivad
energiavarustusega kauplejad tegutseda kas horisontaalselt või vertikaalselt integreerituna või
individuaalselt, hankides litsentsi iga energiavarustuse tüübi kohta.
* Human:* In order to ensure the purchase, generation, transmission, distribution and marketing of energy,
energy supply merchants may operate horizontally or vertically integrated or individually, receiving a
licence for each type of energy supply .
* Machine_1:* In order to ensure the purchase, production, transfer, distribution and marketing of energy,
traders may operate horizontally or vertically, either horizontally or individually, by obtaining a licence for
each type of energy supply.
* Machine_2:* Energy purchasing, production, distribution, transfer, distribution, distribution and distribution
of energy supplies may operate in a horizontal or vertically integrated type of energy supply.
The new translation is worser compared to the translation of the baseline method.

### Next improvements:
- Replace dots by “dots”
- Use google “wordpieces”
- Try transformer with other parameters
