import { db } from "../db/db";
import { Sectors } from "../mock/sectors";

(async () => {

  const pool = db()
  async function insertData(
    client: any,
    data: any[],
    parentId?: number | null
  ): Promise<void> {
    for (const item of data) {
      const result = await client.query(
        "INSERT INTO sectors (label, parent_id) VALUES ($1, $2) RETURNING id",
        [item.label, parentId]
      );

      const categoryId = result.rows[0].id;

      if (item.options && item.options.length > 0) {
        await insertData(client, item.options, categoryId);
      }
    }
  }
  try {
    await pool?.connect();

    await insertData(pool, Sectors);

    console.log("Data inserted successfully.");
  } catch (error) {
    console.error("Error inserting data:", error);
  } finally {
    await pool?.end();
    process.exit();
  }
})();
