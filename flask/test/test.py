from flask import Flask, send_file, render_template
import firebase_admin
from firebase_admin import credentials,db, firestore, storage
from datetime import timedelta

import json

# strorage credit을 연결
cred = credentials.Certificate("data-control-df283-firebase-adminsdk-1znw4-94457d2949.json")
firebase_admin.initialize_app(cred, {
    'storageBucket': 'data-control-df283.appspot.com'
})
firebase_db = firestore.client()
bucket = storage.bucket()

app = Flask(__name__)

# 데이터 출력
@app.route("/", methods=["GET"])
def show():
    data = []
    ref = firebase_db.collection('meat/cqT3JK9BlRDN9P8evBqI/pigs/VjQlqiowD4UVd3FJmV9g/part')
    docs = ref.get()
    for doc in docs:
        data.append(doc.to_dict())

    return str(data)

    
# 데이터 입력
@app.route("/add", methods=['GET'])
def start():
    with open('stock_code.json', encoding='utf-8') as f:
        datas = json.load(f)

    for data in datas:
        document = firebase_db.collection('meat/cqT3JK9BlRDN9P8evBqI/pigs/VjQlqiowD4UVd3FJmV9g/part')
        document.add(data)
    
    return 'success'

@app.route("/image", methods=['GET'])
def show_all_images():
    blobs = bucket.list_blobs(prefix="pickedImage/")
    image_urls = []

    for blob in blobs:
        image_url = blob.generate_signed_url(
            version='v4',
            expiration=timedelta(minutes=15),  # URL 만료 시간 설정
            method='GET'
        )
        image_urls.append(image_url)

    return render_template("image.html", image_urls=image_urls)


if __name__ == '__main__':
    app.run()