const express = require('express');
const app = express();
const port = 3001;

// Ruta para devolver el JSON de productos
app.get('/', (req, res) => {
  res.json({
    "products": [
      {"name": "MacBook Air M2 2022 midnight 13.6", "price": 500},
      {"name": "Monitor Samsung", "price": 100},
      {"name": "Keyboard", "price": 40}
    ]
  });
});

// Escuchar en el puerto especificado
app.listen(port, () => {
  console.log(`Backend Products running on http://backend-products:${port}`);
});

