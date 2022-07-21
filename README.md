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
