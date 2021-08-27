const express = require("express");
const cors = require("cors");
const morgan = require("morgan");

// Env and import routes
const { PORT } = require("./config/_env");
const routes = require("./routes/index");

// Settings
const app = express();
app.set("PORT", PORT || 3000);

// Middlewares
app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

// Routes
app.use("/", routes);

// Sv
app.listen(app.get("PORT"), () => {
  console.log(`Server on port ${app.get("PORT")}`);
});
