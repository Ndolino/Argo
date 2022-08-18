from flask import Flask, render_template
import requests
import json 
app1 = Flask(__name__)
@app.route('/', methods= ['GET'])
def index():
    req  = requests.get('https://miner_ips')
    datar = req.content  
    #print(req.content)
    json_data=json.loads(datar)
    data = json_data
    return render_template('index1.html', data=data)
