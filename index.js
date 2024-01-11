import express from "express";
import likeRoutes from "./src/routes/likeRoutes.js";

const app = express();
app.use(express.json());

// mount likeRoutes on the "/api" path
app.use("/api", likeRoutes);

const port = 8080;
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
