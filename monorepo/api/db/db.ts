import { config } from "dotenv";
import { Pool } from "pg";

config();

export function db() {
  try {
    return new Pool({
      host: process.env.DBHost,
      database: process.env.DBDatabase,
      password: process.env.DBPassword,
      user: process.env.DBUser,
      port: Number(process.env.DBPort),
    });
  } catch (error) {
    console.log(error);
  }
}
