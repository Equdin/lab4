FROM python
# Set working directory
WORKDIR /app
# Copy requirement file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
# Copy application code
COPY . .
# Expose port 3000
EXPOSE 3000
# Run the app
CMD ["python", "app.py"]
