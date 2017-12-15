python -m sockeye.translate -m model_bpe_2 --beam-size 5 --input data_bpe/bpe.cleaned_tc_tok_dev_lab3.et --output data_bpe_2/lab3_trans_bpe_2_beam5.en

python -m sockeye.translate -m model_bpe_2 --beam-size 10 --input data_bpe/bpe.cleaned_tc_tok_dev_lab3.et --output data_bpe_2/lab3_trans_bpe_2_beam10.en

python -m sockeye.translate -m model_bpe_2 --beam-size 12 --input data_bpe/bpe.cleaned_tc_tok_dev_lab3.et --output data_bpe_2/lab3_trans_bpe_2_beam12.en

python -m sockeye.translate -m model_bpe_2 --beam-size 8 --input data_bpe/bpe.cleaned_tc_tok_dev_lab3.et --output data_bpe_2/lab3_trans_bpe_2_beam8.en
