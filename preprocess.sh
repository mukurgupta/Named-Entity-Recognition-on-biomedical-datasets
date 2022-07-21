#!/bin/bash
BIO_DATASET="jnlpba"
FILES="test_ train_"
MAX_LENGTH=128
TRANSFORMER_MODEL="bert-base-cased"

for FILE in $FILES
do
	echo "***** " $FILE " Preprocessing Start *****"
	DATA_DIR=./datasets/$BIO_DATASET
	READ_FILE=./$FILE$BIO_DATASET.tsv
	WRITE_FILE=$FILE$BIO_DATASET.txt

	# Replace tab to space
	cat $DATA_DIR/$READ_FILE | tr '\t' ' ' > $DATA_DIR/temp_file.txt.tmp
	echo "Replacing Done"

	# Preprocess for BERT-based models
	python preprocess.py $DATA_DIR/temp_file.txt.tmp $TRANSFORMER_MODEL $MAX_LENGTH > $DATA_DIR/$WRITE_FILE
	echo "***** " $BIO_DATASET " Preprocessing Done *****"
done
