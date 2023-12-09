import dotenv from "dotenv";
import cors from "cors";

dotenv.config();

import express, { json } from "express";
import { db } from "./db/db";

const pool = db()
const app = express();

app.use(cors());
app.use(json());

app.get("/sectors", async (_request, response) => {
  const sectors = await pool?.query(
    `SELECT *
    FROM sectors;
    `
  );
  return response.status(200).json(sectors?.rows);
});

app.get("/sectors/:id", async (request, response) => {
  try {
    const { id } = request.params;
    const sectors = await pool?.query(
      `SELECT *
    FROM sectors
    WHERE id = $1
    `,
      [id]
    );
    return response.status(200).json(sectors?.rows);
  } catch (error) {
    return response.status(400).json({ message: "error", data: error });
  }
});
app.post("/register", async (request, response) => {
  try {
    const { name, sectorId, terms } = request.body;


    const result = await pool?.query(
      "INSERT INTO users (name, sectorId, terms_accepted) VALUES ($1, $2, $3);",
      [name, sectorId, terms]
    );

    return response.status(201).json({ message: "saved"});
  } catch (error) {
    console.log(error);

    return response.status(400).json({ message: "error", data: error });
  }
});

app.listen(4040, () => {
  console.log("server is running on port 4040");
});
