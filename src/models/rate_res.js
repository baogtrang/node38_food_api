import _sequelize from "sequelize";
const { Model, Sequelize } = _sequelize;

export default class rate_res extends Model {
  static init(sequelize, DataTypes) {
    return super.init(
      {
        user_id: {
          type: DataTypes.INTEGER,
          primaryKey: true, // Set as part of the primary key
          references: {
            model: "users",
            key: "user_id",
          },
        },
        res_id: {
          type: DataTypes.INTEGER,
          primaryKey: true, // Set as part of the primary key
          references: {
            model: "restaurant",
            key: "res_id",
          },
        },
        amount: {
          type: DataTypes.INTEGER,
          allowNull: false,
        },
        date_rate: {
          type: DataTypes.DATEONLY,
          allowNull: true,
        },
      },
      {
        sequelize,
        tableName: "rate_res",
        timestamps: false,
        indexes: [
          {
            name: "user_id",
            using: "BTREE",
            fields: [{ name: "user_id" }],
          },
          {
            name: "res_id",
            using: "BTREE",
            fields: [{ name: "res_id" }],
          },
        ],
      }
    );
  }
}
