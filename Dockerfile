FROM continuumio/miniconda3:latest

# Set the working directory
WORKDIR /app

# Copy the environment file
COPY environment.yml .

# Create the conda environment
RUN conda env create -f environment.yml

# Activate the conda environment
ENV PATH /opt/conda/envs/my-env/bin:$PATH

# Copy the Jupyter Notebook files
COPY . .

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start the Jupyter Notebook
CMD ["jupyter", "notebook", "--port=8888", "--allow-root", "--no-browser", "--ip=0.0.0.0"]
