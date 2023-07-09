#!/bin/bash

# Check if argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 REPO_NAME"
    exit 1
fi

# Set repository name from argument
REPO_NAME=$1

# Set environment name
ENV_NAME="data_science_base"

# Create directory structure
mkdir $REPO_NAME
cd $REPO_NAME

mkdir -p data/raw
mkdir -p data/processed
mkdir notebooks
mkdir -p src/data
mkdir -p src/features
mkdir -p src/models
mkdir -p src/visualization
mkdir tests

# Create empty .py and .md files
touch README.md
touch requirements.txt
touch src/__init__.py
touch src/data/__init__.py
touch src/data/make_dataset.py
touch src/features/__init__.py
touch src/features/build_features.py
touch src/models/__init__.py
touch src/models/predict_model.py
touch src/models/train_model.py
touch src/visualization/__init__.py
touch src/visualization/visualize.py

# Initialize a Git repository
git init

# Create a conda environment
conda create -n $ENV_NAME python=3.10 -y

# Activate the environment
source activate $ENV_NAME

# Define Python packages
echo "python=3.10" > requirements.txt
echo "pandas" >> requirements.txt
echo "numpy" >> requirements.txt
echo "scikit-learn" >> requirements.txt
echo "seaborn" >> requirements.txt
echo "xgboost" >> requirements.txt
echo "shap" >> requirements.txt

# Install Python packages
while read requirement; do conda install --yes $requirement || pip install $requirement; done < requirements.txt

echo "Script completed successfully"
