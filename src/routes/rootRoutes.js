import express from "express";
import likeRoutes from "./likeRoutes.js";
import rateRoutes from "./rateRoutes.js";
import orderRoutes from "./orderRoutes.js";

const rootRouter = express.Router();
rootRouter.use("/like", likeRoutes);
rootRouter.use("/rate", rateRoutes);
rootRouter.use("/order", orderRoutes);

export default rootRouter;
