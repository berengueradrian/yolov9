# Build with: docker build -t aberenguer/yolov9-birds .

# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Install git nano annd libgl1-mesa-glx
RUN apt-get update && apt-get install -y \
    git \ 
    nano \
    libgl1-mesa-glx \
    libglib2.0-0 \
    screen

# Set the working directory in the container to the root of the YOLOv9 repository
WORKDIR /yolov9

# Copy the yolov9 directory contents into the container at /yolov9
COPY ./ /yolov9

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install matplotlib and Pillow==9.5.0
RUN pip install --no-cache-dir matplotlib Pillow==9.5.0

# Download the weight files
#RUN wget -P /weights -q https://github.com/WongKinYiu/yolov9/releases/download/v0.1/yolov9-c.pt \
#    && wget -P /weights -q https://github.com/WongKinYiu/yolov9/releases/download/v0.1/yolov9-e.pt \
#    && wget -P /weights -q https://github.com/WongKinYiu/yolov9/releases/download/v0.1/gelan-c.pt \
#    && wget -P /weights -q https://github.com/WongKinYiu/yolov9/releases/download/v0.1/gelan-e.pt


# Set the entry point to a powershell
CMD ["/bin/bash"]