import "dotenv/config";

export const dbConfig = {
  type: "postgres",
  host: process.env.DB_HOST || "localhost",
  port: parseInt(process.env.DB_PORT || "5432"),
  username: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  synchronize: process.env.NODE_ENV === "development",
  loggin: process.env.NODE_ENV === "development",
  entities: ["src/entities/*.js"], // * wildcard matches all files in the folder
  migrations: ["src/migrations/*.js"],
  subscribers: ["src/subscribers/*js"],
};
