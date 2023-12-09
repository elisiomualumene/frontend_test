import { Pool } from "pg";

export const pool = new Pool({
  host: "localhost",
  database: "test",
  password: "test",
  user: "test",
  port: 5432,
});
