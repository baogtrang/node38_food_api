import { Sequelize } from "sequelize";

// create a new instance of Sequelize with database credentials
const sequelize = new Sequelize("node38_food", "root", "@3RepublicofVietnam", {
  host: "localhost",
  port: 3307,
  dialect: "mysql",
});

export default sequelize;
