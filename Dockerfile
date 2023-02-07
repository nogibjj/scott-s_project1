# Use the Python 3.8 base image
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy the source code into the image
COPY . .

# Install the required packages
RUN make install
# pip install -r requirements.txt

# # Set the environment variable for the OpenAI API key
# ENV OPENAI_API_KEY = os.environ[“OPENAI_API_KEY"]

# Run the main.py script to start the API
CMD ["python", "main.py"]
