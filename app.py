from flask import Flask, render_template

app = Flask(__name__)

# Rutas
@app.route('/') # Ruta Raiz
def root():
  return render_template('index.html')

# Ruta para "Nosotros"
@app.route('/nosotros')
def Nosotros():
  return render_template('nosotros.html')

# Bloque de prueba
if __name__ == "__main__":
  app.run(debug=True)