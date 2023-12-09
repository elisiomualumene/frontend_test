"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const db_1 = require("../db/db");
const sectors_1 = require("../mock/sectors");
(() => __awaiter(void 0, void 0, void 0, function* () {
    const pool = (0, db_1.db)();
    yield (pool === null || pool === void 0 ? void 0 : pool.query(`
    CREATE TABLE sectors (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
      label VARCHAR(255) NOT NULL,
      parent_id UUID REFERENCES sectors(id)
    );
  `));
    yield (pool === null || pool === void 0 ? void 0 : pool.query(`
    CREATE TABLE IF NOT EXISTS users (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      sectorId UUID,
      terms_accepted BOOLEAN,
      FOREIGN KEY (sectorId) REFERENCES sectors(id)
    );
  `));
    function insertData(client, data, parentId) {
        return __awaiter(this, void 0, void 0, function* () {
            for (const item of data) {
                const result = yield client.query("INSERT INTO sectors (label, parent_id) VALUES ($1, $2) RETURNING id", [item.label, parentId]);
                const categoryId = result.rows[0].id;
                if (item.options && item.options.length > 0) {
                    yield insertData(client, item.options, categoryId);
                }
            }
        });
    }
    insertData(pool, sectors_1.Sectors);
    console.log("Data inserted successfully.");
}))();
