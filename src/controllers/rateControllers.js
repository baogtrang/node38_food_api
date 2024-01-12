import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const { rate_res, users, restaurant } = initModels(sequelize);

// function handling ADDING RATING
const rateRestaurant = async (req, res) => {
  try {
    const { userId, resId, amount } = req.body;
    // check if a user already rated a restaurant
    const existingRate = await rate_res.findOne({
      where: { user_id: userId, res_id: resId },
    });
    if (existingRate) {
      return res.status(400).send("The user already rated this restaurant.");
    }
    const rate = await rate_res.create({
      user_id: userId,
      res_id: resId,
      amount: amount,
    });
    return res.status(201).json(rate);
  } catch (error) {
    return res.status(500).send(`Error: ${error}`);
  }
};

// function to get a LIST OF RATING for a restaurant
const getRatingsForRestaurant = async (req, res) => {
  try {
    const { restaurantId } = req.params;
    const ratings = await rate_res.findAll({
      where: { res_id: restaurantId },
    });
    return res.json(ratings);
  } catch (error) {
    res.send(`Error: ${error}`);
  }
};

// function to get LIST OF RATING by a user
const getRatingsByUser = async (req, res) => {
  try {
    const { userId } = req.params;
    const ratings = await rate_res.findAll({
      where: {
        user_id: userId,
      },
    });
    return res.json(ratings);
  } catch (error) {
    res.send(`Error: ${error}`);
  }
};

export { rateRestaurant, getRatingsForRestaurant, getRatingsByUser };
