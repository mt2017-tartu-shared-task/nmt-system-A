sed -i -r 's/\& quot; (.*?) \& quot;/"\1"/g' A.hyps.test.en
sed -i 's/ \& amp; /\&/g' A.hyps.test.en
sed -i 's/ \/ /\//g' A.hyps.test.en
sed -i -r 's/([0-9]:)\s([0-9])/\1\2/g' A.hyps.test.en
