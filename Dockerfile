# ប្រើ Python image ជាមូលដ្ឋាន
FROM python:3.11-slim

# ដំឡើង ffmpeg និង dependencies ផ្សេងៗ
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    && rm -rf /var/lib/apt/lists/*

# កំណត់ working directory
WORKDIR /app

# ចម្លង requirements.txt និងដំឡើង libraries
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ចម្លង code ទាំងអស់ចូលក្នុង image
COPY . .

# ដំណើរការ bot
CMD ["python", "spotify_bot.py"]
