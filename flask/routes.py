from flask import Flask, render_template, request
from flask.globals import request

app = Flask(__name__)
app.config.from_object(__name__)

@app.route('/')
def hello():
    return render_template("index.html")

@app.route('/welcome', methods=['POST'])
def welcome():
    return render_template("welcome.html", myName=request.form['myName'])

@app.route('/back', methods=['POST'])
def back():
    return render_template("back.html", getBack=request.form['getBack'])

@app.route('/sport', methods=['POST'])
def sport():
    return render_template("sports.html", getSport=request.form['getSport'])

@app.route('/college', methods=['POST'])
def college():
    return render_template("college.html", getCollege=request.form['getCollege'])

@app.route('/hobby', methods=['POST'])
def hobby():
    return render_template("hobby.html", getHobby=request.form['getHobby'])

@app.route('/sportscont', methods=['POST'])
def sportscont():
    return render_template("sportscont.html", getSportscont=request.form['getSportscont'])

@app.route('/fifa', methods=['POST'])
def fifa():
    getfifa=request.form['getfifa']
    if getfifa != "yes":
        return render_template("welcome.html")
    else:
        return render_template("fifa.html", getfifa=request.form['getfifa'])
