bert_zh
===
Chinese nlp tasks finetuning with google bert

# Text Classification Task

## Data format
```
text(without special characters: like '\t' or '\n' etc.)\tlabel
```

## Steps（All changes defined in 'run_classifier.py'）
- Prepare datasets.
	- this project needs three .tsv files of {train, dev and test}
	- data format has been shown above
- Download the model.
	- download the chinese bert pretrained model from [Link](https://storage.googleapis.com/bert_models/2018_11_03/chinese_L-12_H-768_A-12.zip])
- Build your own data processor.
	- Input: .tsv files of {train, dev and test}
	- Output: A list of objects named 'InputExample' with attributes
- Define your own data process operation if necessary（optional）
	- Define the process-function in 'file_based_input_fn_builder'.
	- Call the function in input_fn（just refer to the usage of dataset API）
	- Input: data with TFRecords
	- Output: an iterator or dataset structure
- Choose model output 、loss function & optimizer.（optional）
	- Design the classifier structure and loss in 'create_model'
	- Define the optimier in 'model_fn'
	- Input: NaN
	- Output: EstimatorSpec

## Running parameters
- All you need are in the 'run.sh' file.

