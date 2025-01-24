const express = require("express");
const cors = require("cors");
const usuariosRoutes = require("./routes/usuarios");
const visitasRoutes = require("./routes/visitas");
const visitantesRoutes = require("./routes/visitantes");
const cat_colonias = require("./routes/cat_colonias");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api/usuarios", usuariosRoutes);
app.use("/api/visitas", visitasRoutes);
app.use("/api/visitantes", visitantesRoutes);
app.use("/api/cat_colonias", cat_colonias);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});
