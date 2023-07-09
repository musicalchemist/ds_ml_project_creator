# Data Science & Machine Learning Project Creator

This is a simple Bash script that creates a standard directory structure for data science and machine learning projects. The script also sets up a new conda environment and installs a set of predefined Python packages that are commonly used in data science and machine learning projects.

## Usage

To use the script, you need to pass the name of the new project as a command line argument.

```bash
./setup.sh path/to/my_new_project
```

To run the script, give it execute permissions (chmod +x setup.sh), and run it (./setup.sh).

Please note that this script assumes you have conda installed and available on your path. This script creates the repository structure locally, but does not push it to GitHub.

This will create a new directory with the following structure:

```
my_new_project
├── README.md
├── requirements.txt
├── data
│ ├── raw
│ └── processed
├── notebooks
├── src
│ ├── **init**.py
│ ├── data
│ │ ├── **init**.py
│ │ ├── make_dataset.py
│ ├── features
│ │ ├── **init**.py
│ │ ├── build_features.py
│ ├── models
│ │ ├── **init**.py
│ │ ├── predict_model.py
│ │ └── train_model.py
│ └── visualization
│ ├── **init**.py
│ └── visualize.py
└── tests
```

In addition, the script creates a new conda environment with the name data_science_base and installs the following Python packages:

python=3.10
pandas
numpy
scikit-learn
seaborn
xgboost
shap
