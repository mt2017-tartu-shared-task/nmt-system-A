python -m sockeye.translate -m model_wp --beam-size 5 --input data/dev_lab3_wp.et --output data/lab3_wp_beam5.en
python -m sockeye.translate -m model_wp --beam-size 12 --input data/dev_lab3_wp.et --output data/lab3_wp_beam10.en
python -m sockeye.translate -m model_wp --beam-size 10 --input data/dev_lab3_wp.et --output data/lab3_wp_beam12.en
python -m sockeye.translate -m model_wp --beam-size 8 --input data/dev_lab3_wp.et --output data/lab3_wp_beam8.en
