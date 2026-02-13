import 'package:flutter/material.dart';

void main() => runApp(const AppSkateshop());

class AppSkateshop extends StatelessWidget {
  const AppSkateshop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SKateshopFilaColumna(),
    );
  }
}

class SKateshopFilaColumna extends StatelessWidget {
  const SKateshopFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ZON SkateShop",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF800000), // Color Guinda
        actions: const [
          Icon(Icons.favorite, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.music_note, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // --- PRIMERA FILA ---
            Expanded(
              child: Row(
                children: [
                  _crearCajaModerna("Tablas", Colors.black, Icons.skateboarding),
                  const SizedBox(width: 20),
                  _crearCajaModerna("Llantas", Colors.black, Icons.settings_input_component),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // --- SEGUNDA FILA ---
            Expanded(
              child: Row(
                children: [
                  _crearCajaModerna("Trucks", Colors.black, Icons.build),
                  const SizedBox(width: 20),
                  _crearCajaModerna("Lijas", Colors.black, Icons.layers),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // --- TERCERA FILA ---
            Expanded(
              child: Row(
                children: [
                  _crearCajaModerna("Ropa", Colors.black, Icons.checkroom),
                  const SizedBox(width: 20), // Ajustado a 20 para mantener simetría
                  _crearCajaModerna("Ofertas", Colors.black, Icons.local_offer),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- FUNCIÓN MEJORADA CON ICONOS ---
  Widget _crearCajaModerna(String texto, Color colorFondo, IconData icono) {
    // Determinamos el color del texto e icono: negro para amarillo, blanco para los demás
    Color colorContenido = (colorFondo == Colors.black) ? Colors.white : Colors.white;

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: colorFondo,
          borderRadius: BorderRadius.circular(25), // Bordes más suaves
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              size: 40,
              color: colorContenido,
            ),
            const SizedBox(height: 10),
            Text(
              texto,
              style: TextStyle(
                color: colorContenido,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}