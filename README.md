📊 Dockerized Multi-Agent Data Analyzer

📝 Overview

This project demonstrates how multi-agent systems can be used to solve real-world data analysis problems.
Built with Autogen, LangChain, and Docker, it provides a flexible and modular workflow where agents collaborate to:

🧮 Data Analyzer Agent → Generates Python code based on user queries and input data (Excel/PDF).

📊 Code Analyzer Agent → Executes the generated code and produces relevant graphs, charts, or insights.

Together, they form a practical business problem-solving system that can easily be extended with more agents.

✨ Features

🔗 Agent Collaboration – Multiple specialized AI agents working together.
📂 Multi-format Input – Supports Excel and PDF data files.
📊 Visualization Ready – Generates charts/graphs based on queries.
🌀 RoundRobinGroupChat – Agents take turns in a round-robin sequence for structured execution.
🐳 Dockerized Setup – Run anywhere with ease.
⚡ LLM-Powered – Leverages cutting-edge LLMs for reasoning and code generation.

🌀 Agents are orchestrated using RoundRobinGroupChat, ensuring each agent is invoked in a fixed sequence. 

## 🔑 Environment Variables

This project uses a `.env` file to manage API keys securely.  
You need to create this file in the **project root directory**.

### 🔹 1. Create `.env` file
In your project root, create a file named `.env`:

```bash
touch .env

🔹 2. Add the following variables
OPENAI_API_KEY → Required if you use OpenAI models.

⚙️ Installation
1️⃣ Clone the Repository

```bash
git clone https://github.com/sushantsur23/Dockerized-Multi-Agent-Data-Analyzer.git
cd Dockerized-Multi-Agent-Data-Analyzer

2️⃣ Setup Environment
```bash
./init.sh
pip install -e .

Make sure to run the Docker tool in your local before you start the streamlit app file.

3️⃣ Run with command
```bash
streamlit run streamlit_app.py

## 🏗️ Demo Flow

![Docker container running](https://github.com/sushantsur23/Dockerized-Multi-Agent-Data-Analyzer/blob/d5d93e70dcfcff80956a2f4ac6804c721118b7e8/graphs/image02.png) 

![Streamlit App UI](https://github.com/sushantsur23/Dockerized-Multi-Agent-Data-Analyzer/blob/d5d93e70dcfcff80956a2f4ac6804c721118b7e8/graphs/image01.png) 

🚀 Future Enhancements

✅ Add Financial Analyzer Agent (forecasting, portfolio analysis).
✅ Add Reporting Agent (PDF/PowerPoint exports).
✅ Add Question Answering Agent (natural language queries on analyzed data).

📚 Resources
https://github.com/microsoft/autogen
https://microsoft.github.io/autogen-for-net/articles/Roundrobin-chat.html

📜 License

MIT License © 2025 Sushant Sur
