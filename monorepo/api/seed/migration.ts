import { pool } from "../db/db";

(async () => {
  await pool.query(`
    CREATE TABLE sectors (
        id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
        label VARCHAR(255) NOT NULL,
        parent_id UUID REFERENCES sectors(id)
    );
    `);

  await pool.query(`CREATE TABLE IF NOT EXISTS users (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      sectorId UUID,
      terms_accepted BOOLEAN,
      FOREIGN KEY (sectorId) REFERENCES sectors(id)
    );
    `);
})();
