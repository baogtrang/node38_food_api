import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const { orders, food } = initModels(sequelize);

// function to add an order
const addOrder = async (req, res) => {
  try {
    const { userId, foodId, amount } = req.body;

    // Check if the food item exists using findOne
    const foodItem = await food.findOne({
      where: { food_id: foodId },
    });

    if (!foodItem) {
      return res.status(404).send("Food not found");
    }

    // Create an order
    const order = await orders.create({
      user_id: userId,
      food_id: foodId,
      amount: amount,
    });

    return res.status(201).json(order);
  } catch (error) {
    res.status(500).send(`Error: ${error.message}`);
  }
};

export { addOrder };
