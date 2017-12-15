spm_train --input=../data/data.data --model_prefix=../data/eten_wp --vocab_size=50000
spm_encode --model=../data/eten_wp.model --output_format=piece < ../data/cleaned_dev.et > ../data/cleaned_dev_wp.et
spm_encode --model=../data/eten_wp.model --output_format=piece < ../data/cleaned_dev.en > ../data/cleaned_dev_wp.en
spm_encode --model=../data/eten_wp.model --output_format=piece < ../data/cleaned_train.et > ../data/cleaned_train_wp.et
spm_encode --model=../data/eten_wp.model --output_format=piece < ../data/cleaned_train.en > ../data/cleaned_train_wp.en
