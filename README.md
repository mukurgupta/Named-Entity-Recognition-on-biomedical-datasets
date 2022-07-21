# NER on biomedical datasets

Biomedical NER data converted to [CoNLL format](http://ufal.mff.cuni.cz/conll2009-st/task-description.html) are placed in datasets directory. NER experiments are performed on 5 biomedical datasets: Drug-Drug Interaction Dataset, JLPBA, BC5CDR, NCBI-Disease and, Anatomy Entity Mention Dataset.

## How to run the Code 

- Preprocess the uploaded the dataset files to break the text examples considering the max token length used for the transformer model. Change the "dataset" variable in preprocess.sh and run:

    ``` 
    cd Named-Entity-Recognition-on-biomedical-datasets
    bash preprocess.sh
    ```

- Train the model by running bioNER.py.
  For example, for training biobert with JNLPBA dataset, run:

    ``` 
    python bioNER.py -m 'dmis-lab/biobert-base-cased-v1.1' -e 4 -b 8 -l 128 -x 'jlpba'
    ```

## NER Experiments

| Model/Dataset   | DDI   | JNLPBA | BC5CDR | NCBI Disease | AnatEM |
| --------------- | ----- | ------ | ------ | ------------ | ------ |
| BERT            | 84.43 | 72.43  | 87.26  | 76.39        | 78.79  |
| BioBERT         | 88.09 | 73.55  | 90.13  | 80.69        | 82.87  |
| PubMedBERT      | 87.4  | 74.5   | 90.9   | 83.1         | 83.74  |
| BioMed\_Roberta | 87.92 | 74.63  | 90.05  | 80.93        | 82.05  |
| RoBERTa         | 86.87 | 74.84  | 88.43  | 79.45        | 79.35  |
