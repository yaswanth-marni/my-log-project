# LOGLIZER

1. log collection
2. log parsing

**fixed partitioning**
- Fixed partitioning breaks logs into non-overlapping segments of a fixed size
Logs = [L1, L2, L3, ..., L200] Fixed window size = 50

=> Partition 1: L1 - L50

=> Partition 2: L51 - L100

=> Partition 3: L101 - L150

=> Partition 4: L151 - L200

**sliding partitioning**
- Sliding partitioning uses a moving window of logs, where each window overlaps with the previous one by some step size.
Logs = [L1, L2, ..., L100]

Window size = 10, Step size = 5

=> Window 1: L1 - L10

=> Window 2: L6 - L15

=> Window 3: L11 - L20

**identifier based partitioning**
- Identifier-based partitioning is a semantic partitioning strategy commonly used in log anomaly detection, log parsing, and log analysis tasks.
- it divides based on individual id's
[12:00] RequestID=123 Start processing 
[12:00] RequestID=123 Load data 
[12:01] RequestID=123 Finish 
[12:01] RequestID=456 Start processing 
[12:02] RequestID=456 Error: timeout

Partition 1 (ID = 123): [Start processing, Load data, Finish]

3. Anomaly detection
Unsupervised Log-based Anomaly Detection
existing models:

**DeepLog:**

- first work to employ LSTM for log anomaly detection.
- learned from the sequential relations of log events
- the first work to detect anomalies in a forecasting-based fashion
- template2Vec ---> first searches synonyms and antonyms in log templates and then applies an embedding mode

**Logsy**
- first work utilizing the Transformer to detect anomalies on log data.
- It is a classification-based method, which learns log representations in a way to better distinguish between normal data from the system of interest and abnormal samples from auxiliary log datasets.

**Autoencoder**

- The autoencoder is used for feature extraction, while the isolation forest is used for anomaly detection.

Supervised Log-based Anomaly Detection

**LogRobust**

- LogRobust incorporates the attention mechanism into a Bi-LSTM model to assign different weights to log events, called attentional BiLSTM.

**CNN**

* Unsupervised models has an accuracy of 0.94 and 0.96
* Supervised models has an accuracy of 0.97 by CNN & 0.98 by BiLSTM
* Auto encoders performs poorly --> 0.88 in hdfs & 0.78 in bgl