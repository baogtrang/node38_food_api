import express from "express";
import rootRouter from "./src/routes/rootRoutes.js";

const app = express();
app.use(express.json());

// mount likeRoutes on the "/api" path
app.use("/api", rootRouter);

const port = 8080;
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
