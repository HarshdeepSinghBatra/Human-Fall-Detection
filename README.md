
# Human Fall Detection System

The Human Fall Detection System is a solution for real-time fall detection using Convolutional Neural Networks (CNN). This project leverages popular Python libraries such as OpenCV, TensorFlow, and Keras, providing an efficient and accurate model for identifying human falls in video streams.


## Features

- **Real-time Fall Detection:** The system utilizes CNN to analyze video streams in real-time and accurately identify instances of human falls.
- **Streamlit UI:** A user-friendly interface created with Streamlit, allowing easy interaction with the fall detection system.
- **OpenCV Integration:** Seamless integration with OpenCV for video capture and processing, enhancing the efficiency of fall detection.
- **TensorFlow and Keras:** The project leverages the power of TensorFlow and Keras to build, train, and deploy the Convolutional Neural Network for fall detection.


## Getting Started

Follow these steps to set up and run the Human Fall Detection System on your local machine:

1. **Clone the Repository :**
```bash
  git clone https://github.com/HarshdeepSinghBatra/Human-Fall-Detection.git
```
2. **Setup Virtual Environment :**
```bash
  python -m venv venv
  venv\Scripts\activate
```
2. **Install Dependencies :**
```bash
  pip install -r requirements.txt
```
3. **Run the Application :**

- Image Upload Version
```bash
  streamlit run uploadImage.py
```
- Live Feed Version
```bash
  streamlit run liveFeed.py
```
    
##  Usage

- **Video Input:** The system supports video stream from the device's webcam for real-time fall detection.
- **Real-time Monitoring:** The application provides real-time monitoring of the video stream, marking instances of detected falls, and sending an alert notification on the specified user email.
- **User-friendly Interface:** Easily navigate through the Streamlit interface to control the fall detection system and visualize the results.
