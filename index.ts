import dotenv from "dotenv";
dotenv.config();

import express, { Application } from "express";
import mysql from "mysql2";
import cors from "cors";

const port: number = Number(process.env.APP_PORT) || 3310;

const app: Application = express();

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});