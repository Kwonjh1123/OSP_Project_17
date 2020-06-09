#!/usr/bin/python
import os
from flask import Flask
from flask import render_template, request, redirect, url_for
from werkzeug.utils import secure_filename

ALLOWED_EXTENSIONS=set('txt')
app=Flask(__name__)

@app.route('/')
def home():
	return render_template('home_17.html')

@app.route('/fileUpload', methods=['GET','POST'])
def upload_file():
	if request.method=='POST':
		f=request.files['file']
		#텍스트파일 flask/upload에 저장
		f.save("./upload/"+secure_filename(f.filename))
		return 'uploads complete'

if __name__=='__main__':
	app.run(debug=False)
