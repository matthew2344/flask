from __future__ import absolute_import
from __future__ import division
from __future__ import print_function
from flask import Flask, Response, jsonify, request
from PIL import Image
from flask_cors import CORS, cross_origin
from preprocess import preprocesses
from classifier import training
from binascii import a2b_base64
from io import StringIO, BytesIO
import json
import cv2
import numpy as np
import facenet
import detect_face
import os
import pickle
import tensorflow.compat.v1 as tf
import threading
import base64

app = Flask(__name__)


@app.route('/')
def index():
    return jsonify({"Choo Choo": "Welcome to your Flask app 🚅"})


@app.route('/test')
def test():
   return jsonify({"Choo Choo": "Testing Flask app 🚅"})



if __name__ == '__main__':
    app.run(debug=True, port=os.getenv("PORT", default=5000))
