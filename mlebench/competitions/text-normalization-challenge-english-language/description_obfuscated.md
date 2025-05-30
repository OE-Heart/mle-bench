# Task

Create a model to normalize text (convert text from written expressions to a form suitable for text-to-speech systems, e.g. converting "$3.16" into "three dollars, sixteen cents").

# Metric

Prediction accuracy (the total percent of correct tokens). The predicted and actual string must match exactly in order to count as correct.

# Submission Format

For each token (id) in the test set, you must predict the normalized text. The file should contain a header and have the following format:

```
id,after
0_0,"the"
0_1,"quick"
0_2,"fox"
...
```

# Data

You are provided with a large corpus of text. Each sentence has a **sentence_id**. Each token within a sentence has a **token_id**. The **before** column contains the raw text, the **after** column contains the normalized text. The training set contains an additional column, **class**, which is provided to show the token type. In addition, there is an **id** column used in the submission format. This is formed by concatenating the **sentence_id** and **token_id** with an underscore (e.g. 123_5).

- en_sample_submission.csv - a submission file showing the correct format
- en_test.csv - the test set, does not contain the normalized text
- en_train.csv - the training set, contains the normalized text