from flask import Flask, request
appFlask = Flask(__name__)
@appFlask.route('/data/2.5/weather')
def access_param():
    q = request.args.get('q')
    
    appid = request.args.get('appid')
    output = q+" "+appid
    return 'The city and apikey are: {}'.format(output)
appFlask.run(debug=True, port=5000) 