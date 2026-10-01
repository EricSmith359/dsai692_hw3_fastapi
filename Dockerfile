#Create python 3.13 base image
FROM python:3.13-slim

# Set the a working directory
WORKDIR /fastapi

# Copy environment.yml
COPY * ./

# Install libraries and packages
RUN pip install -r requirements.txt

# Expose port
EXPOSE 8000

#Run streamlit application
CMD ["fastapi", "run", "extract_save_data.py", "--host", "0.0.0.0", "--port", "8000"]