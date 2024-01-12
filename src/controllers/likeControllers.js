import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const { like_res, restaurant, users } = initModels(sequelize);

// function to handle LIKING a restaurant
const likeRestaurant = async (req, res) => {
  try {
    const { userId, restaurantId } = req.body;
    // Check if already liked
    const existingLike = await like_res.findOne({
      where: { user_id: userId, res_id: restaurantId },
    });
    if (existingLike) {
      return res.status(400).send("The user already liked this restaurant");
    }
    const like = await like_res.create({
      user_id: userId,
      res_id: restaurantId,
    });
    res.status(201).json(like);
  } catch (error) {
    res.send(`Error: ${error}`);
  }
};

// function to handle DISLIKING a restaurant
const unlikeRestaurant = async (req, res) => {
  try {
    const { userId, restaurantId } = req.body;
    const existingLike = await like_res.findOne({
      where: { user_id: userId, res_id: restaurantId },
    });
    if (!existingLike) {
      return res.status(400).send("The user never liked the restaurant");
    }
    await existingLike.destroy();
    res.status(200).send("Restaurant is unliked successfully");
  } catch (error) {
    res.status(500).send(`Error: ${error.message}`);
  }
};

// function to get the list of likes for a restaurant
const getLikesForRestaurant = async (req, res) => {
  try {
    const { restaurantId } = req.params;
    const likes = await like_res.findAll({
      where: { res_id: restaurantId },
      include: [{ model: users, as: "user" }],
    });
    res.json(likes);
  } catch (error) {
    res.status(500).send(`Error: ${error.message}`);
  }
};

// function to get the list of likes by a user
const getLikesByUser = async (req, res) => {
  try {
    const { userId } = req.params;
    const likes = await like_res.findAll({
      where: { user_id: userId },
      include: [
        {
          model: restaurant,
          as: "re",
          attributes: ["res_id", "res_name"],
        },
      ],
    });
    res.json(likes);
  } catch (error) {
    res.send(`Error: ${error.message}`);
  }
};

export {
  likeRestaurant,
  unlikeRestaurant,
  getLikesForRestaurant,
  getLikesByUser,
};
