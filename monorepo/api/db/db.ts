import { config } from "dotenv";
import { Pool } from "pg";

config();
export const pool = new Pool({
  host: process.env.DBHost,
  database: process.env.DBDatabase,
  password: process.env.DBPassword,
  user: process.env.DBUser,
  port: Number(process.env.DBPort),
});
