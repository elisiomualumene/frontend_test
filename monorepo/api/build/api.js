"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const dotenv_1 = __importDefault(require("dotenv"));
const cors_1 = __importDefault(require("cors"));
dotenv_1.default.config();
const express_1 = __importStar(require("express"));
const db_1 = require("./db/db");
const app = (0, express_1.default)();
app.use((0, cors_1.default)());
app.use((0, express_1.json)());
app.get("/sectors", (_request, response) => __awaiter(void 0, void 0, void 0, function* () {
    const sectors = yield db_1.pool.query(`SELECT *
    FROM sectors;
    `);
    return response.status(200).json(sectors.rows);
}));
app.get("/sectors/:id", (request, response) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = request.params;
        const sectors = yield db_1.pool.query(`SELECT *
    FROM sectors
    WHERE id = $1
    `, [id]);
        return response.status(200).json(sectors.rows);
    }
    catch (error) {
        return response.status(400).json({ message: "error", data: error });
    }
}));
app.post("/register", (request, response) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { name, sectorId, terms } = request.body;
        const result = yield db_1.pool.query("INSERT INTO users (name, sectorId, terms_accepted) VALUES ($1, $2, $3);", [name, sectorId, terms]);
        return response.status(201).json({ message: "saved", data: result.fields });
    }
    catch (error) {
        console.log(error);
        return response.status(400).json({ message: "error", data: error });
    }
}));
app.listen(4040, () => {
    console.log("server is running on port 4040");
});
