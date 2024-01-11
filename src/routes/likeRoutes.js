import express from "express";
import {
  getLikesByUser,
  getLikesForRestaurant,
  likeRestaurant,
  unlikeRestaurant,
} from "../controllers/likeControllers.js";

const likeRoutes = express.Router();

// post request to LIKE a restaurant
likeRoutes.post("/likeRestaurant", likeRestaurant);

// delete request to UNLIKE a restaurant
likeRoutes.delete("/unlikeRestaurant", unlikeRestaurant);

// route to get all likes for a restaurant
likeRoutes.get("/restaurant/:restaurantId", getLikesForRestaurant);

// route to get all likes by a user
likeRoutes.get("/user/:userId", getLikesByUser);

export default likeRoutes;
