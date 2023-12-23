import io
import cv2
import numpy as np
import streamlit as st

import matplotlib.pyplot as plt
from tensorflow.keras.models import load_model

import smtplib
from email.message import EmailMessage
import os
from dotenv import load_dotenv

load_dotenv()

model = load_model('model')
receiver = ""
text_input = st.text_input("Enter Email Address")
if text_input:
    receiver = text_input

def email_alert(to):
    user = os.getenv("USER") 
    password = os.getenv("PASSWORD")
    msg = EmailMessage()
    msg.set_content('I just fell down! I might be unconscious. \nVisit me at my house and please call an ambulance'
)
    msg['subject'] = 'Emergency Alert!'
    msg['to'] = to
    msg['from'] = user

    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login(user, password)
    server.send_message(msg)
    server.quit()
    st.write("Email sent successfully to " , to)

# Function to make predictions
def predict_image(img):
    resized_img = cv2.resize(img, (96,96) )
    cur_pred = []
    cur_pred.append(resized_img)
    cur_pred = np.array(cur_pred)
    predicted_labels = ( model.predict(cur_pred) >= 0.5).astype('int64')
    return predicted_labels[0]

# Streamlit UI
st.title("Fall Detection Software")
placeholder_text1 = st.empty()

def status(val):
    if(val):
        return "FALLEN EMERGENCY ALERT !!"
    else:
        return "Everything Normal"

def check_email():
    placeholder_text = st.empty()
    placeholder_text.text("Status Processing...")
    file_bytes = uploaded_file.getvalue()
    bin_stream = io.BytesIO(file_bytes)
    image = cv2.imdecode(np.frombuffer(bin_stream.read(), np.uint8), 1)
    res = predict_image(image)
    print(res)
    placeholder_text.write(status(res))  # Update the placeholder text using write()
    if res:
        email_alert(receiver)


st.title("Upload your image to be checked")
uploaded_file = st.file_uploader("Upload an image", type=["png", "jpg", "jpeg"])


placeholder_text2 = st.empty()
placeholder_text2.text("")

if st.button("Submit"):
    if text_input == "":
        placeholder_text1.text("Please enter email address")
    else:
        if uploaded_file is None:
            placeholder_text1.text("Please upload an image")
        else:
            placeholder_text1.text("")
            placeholder_text = st.empty()
            placeholder_text.text("Status Processing...")
            file_bytes = uploaded_file.getvalue()
            bin_stream = io.BytesIO(file_bytes)
            image = cv2.imdecode(np.frombuffer(bin_stream.read(), np.uint8), 1)
            res = predict_image(image)
            print(res)
            placeholder_text.write(status(res))  # Update the placeholder text using write()
            if res:
                email_alert(receiver)
