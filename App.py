import base64
from fileinput import filename
import os
from distutils.log import debug
from flask import Flask, request, send_from_directory, copy_current_request_context
from werkzeug.utils import secure_filename
from flask_cors import CORS, cross_origin
import json
import pymysql
import cloudinary
import cloudinary.uploader
import cloudinary.api
from datetime import datetime
from werkzeug.security import generate_password_hash, check_password_hash
from os import remove
import threading
import asyncio
import platform


app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'
app.config['UPLOAD_FOLDER'] = "./images"

@app.route('/')
@cross_origin()
def index():
    return 'Creado'


cloudinary.config( 
  cloud_name = "jacrcam", 
  api_key = "339551371381387", 
  api_secret = "Fkh08I1VhmuiUGPNGv1UsaitTLI"
)

@app.route('/login', methods=['POST'])
def singin():
    if request.method == 'POST':
        # user = request.form['user']
        # password = request.form['password']
        data = json.loads(request.data)
        user = data['data']['user']
        password = data['data']['password']

        conexion = pymysql.connect( host='localhost', user= 'root', passwd='pichito0412.', db='proyectoimagenes' )
        estado = ""
        try:
            with conexion.cursor() as cursor:
                consulta = "SELECT nombre, contrasena, idUser FROM usuarios where nombre=%s;"
                cursor.execute(consulta, (user))

                datosUser = cursor.fetchall()

                print(datosUser[0][0])
                if(check_password_hash( datosUser[0][1],password)):
                    estado = {"status": 'Logueado', "id": datosUser[0][2]}
                else:
                    estado = {"status": 'Negado', "id": ""}           
        finally:
            conexion.close()                    

        return estado   


@app.route('/singup', methods=['POST'])
def login():
    if request.method == 'POST':
        data = json.loads(request.data)
        user = data['data']['user']
        password = data['data']['password']

        conexion = pymysql.connect( host='localhost', user= 'root', passwd='pichito0412.', db='proyectoimagenes' )

        mensaje = ""
        with conexion.cursor() as cursor:
                consulta = "SELECT nombre FROM usuarios where nombre=%s;"
                cursor.execute(consulta, (user))

                datosUser = cursor.fetchall()
                if(len(datosUser)==0):
                    with conexion.cursor() as cursor:
                        consulta = "INSERT INTO usuarios(nombre, contrasena) VALUES (%s, %s);"                         
                        cursor.execute(consulta, (user, generate_password_hash(password)))                    
                        conexion.commit()
                        mensaje = 'usuario creado'
                else:
                    mensaje = "Usuario repetido"
                
                conexion.close()

        return mensaje

async def add_img_bd(file, idU):
        files = file
        idUser = idU        

        conexion = pymysql.connect( host='localhost', user= 'root', passwd='pichito0412.', db='proyectoimagenes' )

        try:
            with conexion.cursor() as cursor:
                consulta = "INSERT INTO imagenes(nombreImage, ruta, idUser) VALUES (%s, %s, %s);" 

                for file in files:
                    
                    filename =  str(datetime.today().strftime('%Y %H_%M_%S_')) + secure_filename(file.filename)  # filename guarda el nombre de la imagen
                    file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))                    
                    
                    res = cloudinary.uploader.upload("./images/"+filename)
                    print(res['url'])
                    cursor.execute(consulta, (filename, res['url'], idUser))        

                    remove("./images/"+filename)

                conexion.commit()
        finally:
            print("termino")
            conexion.close()
        
        return "guardado"

async def add_img_recibe(files, idU):

    await add_img_bd(files, idU)
  

    return "ok img complet"

def setImagenes(files, idU):
    print("Entra en asyncio, run")
    if platform.system()=='Windows':
        asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())
    asyncio.run(add_img_recibe(files, idU))

    return "ok aync complet"

# recibe la imagen directo del formulario
@app.route('/set_image2',methods=['POST'])         # recibe el arreglo, pero guarda solo el primero
def add_image2():
    files = request.files.getlist('files')
    id = request.args.get('id')

    if request.method == "POST":
        hilo = threading.Thread(target=setImagenes, args=(files,id,))
        hilo.start()
        hilo.join()

    return "Recibido"   



@app.route('/get_Images', methods=['GET'])  #enviara la url de las imagenes al front
def get_iamge():
        # id = 2
        id = request.args.get('id')
        imagenes=[]
        # data = json.loads(request.data)
        # id = data['data']['idUsuario']

        conexion = pymysql.connect( host='localhost', user= 'root', passwd='pichito0412.', db='proyectoimagenes' )

        try:
            with conexion.cursor() as cursor:
                consulta = "SELECT nombreImage, ruta FROM imagenes where idUser=%s;"
                cursor.execute(consulta, (id))

                datosUser = cursor.fetchall()

                for img in datosUser:
                    # print("imagenes obtenidas")
                    # print(img[1])
                    imagenes.append(img[1])

        finally:
            conexion.close()
            print("Terminado: " + str(imagenes))

        return json.dumps(['imagenes', imagenes])
    


if __name__ == '__main__':
    app.run(port = 3001, debug = True)