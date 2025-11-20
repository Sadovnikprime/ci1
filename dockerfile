FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV TOKEN="your_bot_token_here"
ENV OWNER_NAME="Bot_Owner"

CMD ["python", "main.py"]