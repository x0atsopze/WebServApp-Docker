from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
	return 'Hello, World! This is my first Flask app.\
 I am very excited about thi journey.'

if __name__ == '__main__':
	app.run(debug=True)

