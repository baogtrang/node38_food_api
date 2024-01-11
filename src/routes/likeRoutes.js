import express from "express";

const likeRoutes = express.Router();

// post request to LIKE a restaurant
likeRoutes.post("/like", likeController);

// delete request to UNLIKE a restaurant
likeRoutes.delete("/unlike", unlikeController);

// route to get all likes for a restaurant
likeRoutes.get("/restaurant/:restaurantId", getLikesForRestaurant);

// route to get all likes by a user
likeRoutes.get("/user/:userId", getLikesByUser);

export default likeRoutes;
