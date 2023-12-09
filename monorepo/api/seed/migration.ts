import { db } from "../db/db";
import { Sectors } from "../mock/sectors";

(async () => {
  const pool = db();

  await pool?.query(`
    CREATE TABLE sectors (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
      label VARCHAR(255) NOT NULL,
      parent_id UUID REFERENCES sectors(id)
    );
  `);

  await pool?.query(`
    CREATE TABLE IF NOT EXISTS users (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      sectorId UUID,
      terms_accepted BOOLEAN,
      FOREIGN KEY (sectorId) REFERENCES sectors(id)
    );
  `);

  for (const sector of Sectors) {
    const result = await pool?.query(
      "INSERT INTO sectors (label, parent_id) VALUES ($1, $2) RETURNING id",
      [sector.label, null]
    );

    const categoryId = result?.rows[0].id;

    if (sector.options && sector.options.length > 0) {
      for (const option of sector.options) {
        await pool?.query(
          "INSERT INTO sectors (label, parent_id) VALUES ($1, $2) RETURNING id",
          [option.label, categoryId]
        );
      }
    }
  }
})();
