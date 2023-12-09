import dotenv from "dotenv";
import cors from "cors";

dotenv.config();

import express, { json } from "express";
import { pool } from "./db/db";

const app = express();

app.use(cors());
app.use(json());

app.get("/sectors", async (_request, response) => {
  const sectors = await pool.query(
    `SELECT *
    FROM sectors;
    `
  );
  return response.status(200).json(sectors.rows);
});

app.get("/sectors/:id", async (request, response) => {
  try {
    const { id } = request.params;
    const sectors = await pool.query(
      `SELECT *
    FROM sectors
    WHERE id = $1
    `,
      [id]
    );
    return response.status(200).json(sectors.rows);
  } catch (error) {
    return response.status(400).json({ message: "error", data: error });
  }
});
app.post("/register", async (request, response) => {
  try {
    const { name, sectorId, terms } = request.body;

    await pool.query(`CREATE TABLE IF NOT EXISTS users (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      sectorId UUID,
      terms_accepted BOOLEAN,
      FOREIGN KEY (sectorId) REFERENCES sectors(id)
  );
  `);

    const result = await pool.query(
      "INSERT INTO users (name, sectorId, terms_accepted) VALUES ($1, $2, $3);",
      [name, sectorId, terms]
    );

    return response.status(201).json({ message: "saved", data: result.fields });
  } catch (error) {
    console.log(error);

    return response.status(400).json({ message: "error", data: error });
  }
});

app.listen(4040, () => {
  console.log("server is running on port 4040");
});
