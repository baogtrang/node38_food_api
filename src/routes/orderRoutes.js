import express from "express";
import { addOrder } from "../controllers/orderControllers.js";

const orderRoutes = express.Router();
orderRoutes.post("/addOrder", addOrder);

export default orderRoutes;
