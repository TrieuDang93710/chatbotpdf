FROM python:3.11-slim

WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install Ollama (nếu cần)
RUN pip install langchain-ollama langchain_chroma langchain_community langchain

# Expose port
EXPOSE 8000

# Run the application
CMD ["python", "app.py"]