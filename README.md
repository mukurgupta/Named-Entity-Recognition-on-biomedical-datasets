# NER on biomedical datasets

Add preprocessed datasets in CoNLL format in ./DDI

Train the model by running bioNER.py

Example:
For training biobert: 
python bioNER.py -m 'dmis-lab/biobert-base-cased-v1.1' -e 3 -b 8 -l 256
