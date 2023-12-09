"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.db = void 0;
const dotenv_1 = require("dotenv");
const pg_1 = require("pg");
(0, dotenv_1.config)();
function db() {
    try {
        return new pg_1.Pool({
            host: process.env.DBHost,
            database: process.env.DBDatabase,
            password: process.env.DBPassword,
            user: process.env.DBUser,
            port: Number(process.env.DBPort),
        });
    }
    catch (error) {
        console.log(error);
    }
}
exports.db = db;
