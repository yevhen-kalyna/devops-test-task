from flask import Flask
import requests

app = Flask(__name__)

@app.route("/")
def hello():
    r = requests.get('https://a1-b2-c3-devops-test.s3.eu-west-2.amazonaws.com/index.html')
    return r.content

if __name__ == "__main__":
    app.run(host='0.0.0.0')
