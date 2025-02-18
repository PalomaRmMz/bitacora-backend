const express = require("express");
const cors = require("cors");
const catalogosRoutes = require("./routes/catalogos");
const usuariosRoutes = require("./routes/usuarios");
const visitasRoutes = require("./routes/visitas");
const visitasFilterRoutes = require("./routes/visitasFilter");
const visitantesRoutes = require("./routes/visitantes");
const visitantesFilterRoutes = require("./routes/visitantesFilter");
const visitasAddRoutes = require("./routes/add_visita");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api/catalogos", catalogosRoutes);
app.use("/api/usuarios", usuariosRoutes);
app.use("/api/visitas", visitasRoutes);
app.use("/api/visitas/filtro", visitasFilterRoutes);
app.use("/api/visitantes", visitantesRoutes);
app.use("/api/visitantes/filtro", visitantesFilterRoutes);
app.use("/api/visitas/addvisita", visitasAddRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server en puerto ${PORT}`);
});
