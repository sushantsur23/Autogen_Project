# 5. Create project structure
echo "📂 Setting up project structure..."

# --- Function to create directory if not exists ---
create_dir() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created directory: $1"
    else
        echo "Directory already exists: $1"
    fi
}

# --- Function to create file if not exists ---
create_file() {
    if [ ! -f "$1" ]; then
        touch "$1"
        echo "Created file: $1"
    else
        echo "File already exists: $1"
    fi
}


create_file main.py
create_file streamlit_app.py

create_dir agents
create_dir agents/prompts
create_file agents/__init__.py
create_file agents/prompts/__init__.py
create_file agents/Code_executor_agent.py
create_file agents/Data_Analyzer_agent.py
create_file agents/data_analyzer_message.py

create_dir config

create_file config/__init__.py
create_file config/constants.py
create_file config/docker_util.py


create_dir models
create_file models/__init__.py
create_file models/openai_model_client.py

create_file .env

create_dir teams
create_file teams/__init__.py
create_file teams/analyzer_gpt.py

create_file requirements.txt


# 4. Create requirements.txt if not exists & add libraries
if [ ! -f "requirements.txt" ]; then
    echo "📄 Creating requirements.txt..."
    cat <<EOL > requirements.txt
autogen-agentchat
autogen-core
autogen-ext
asyncio
dotenv
openai
tiktoken
autogen-ext[docker]
streamlit
EOL
    echo "✅ requirements.txt created with default libraries."
else
    echo "📄 requirements.txt already exists, skipping creation."
fi

set -e  # Exit if any command fails

echo "🚀 Initializing Finance Health Report project with Conda..."
conda create --prefix ./venv python=3.12 -y

# 1. Create Conda environment in local folder (./venv)
if [ ! -d "venv" ]; then
    echo "📦 Creating Conda environment in ./venv ..."
    conda create --prefix ./venv python=3.12 -y
else
    echo "✅ Conda environment already exists in ./venv"
fi

# 2. Activate Conda environment
echo "🔗 Activating Conda environment..."
# Conda environments created with --prefix are activated like this:
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate ./venv

echo "🚀 Creating setup.py file with the Project information as needed..."
touch setup.py

#!/bin/bash

# Create setup.py
echo "📝 Creating setup.py..."
cat > setup.py <<EOL
from setuptools import setup, find_packages

def load_requirements():
    with open("requirements.txt") as f:
        return f.read().splitlines()

setup(
    name="dockerized-multi-agent-data-analyzer",
    version="0.1.0",
    packages=find_packages(),
    install_requires=load_requirements(),
    author="Sushant Sur",
    description="Dockerized Multi-Agent Data Analyzer",
    python_requires=">=3.12",
)
EOL

echo "✅ Setup complete and ready to run!"

echo "⚙️ Installing project in editable mode..."
pip install -e .

echo "✅ Project structure is ready."
