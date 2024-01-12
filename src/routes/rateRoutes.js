import express from "express";
import {
  getRatingsByUser,
  getRatingsForRestaurant,
  rateRestaurant,
} from "../controllers/rateControllers.js";

const rateRoutes = express.Router();

rateRoutes.post("/addRating", rateRestaurant);
rateRoutes.get(
  "/getRatingsForRestaurant/:restaurantId",
  getRatingsForRestaurant
);
rateRoutes.get("/getRatingsByUser/:userId", getRatingsByUser);

export default rateRoutes;
