import express from "express";
import likeRoutes from "./likeRoutes.js";

const rootRouter = express.Router();
rootRouter.use("/like", likeRoutes);

export default rootRouter;
