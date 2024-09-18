from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello Cloud! - CI/CD Pipeline'

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

