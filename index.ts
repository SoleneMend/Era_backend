import dotenv from "dotenv";
dotenv.config();

import express from "express";
import mysql from "mysql2";
import cors from "cors";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

import type {periodsTypeArray} from "./types/periodsType";

const port: number = Number(process.env.APP_PORT) || 3310;

const app = express();

// ---- App fontion ----

app.use(cors());

app.use("/assets", express.static(path.join(__dirname, "assets")));

app.get("/", (req, res) => {
  res.send("Hello World!");
});


/* -------------------- Base de donnée - Connection --------------------- */

const connection = mysql.createConnection({
	host: process.env.DB_HOST,
	user: process.env.DB_USER,
	password: process.env.DB_PASSWORD,
	database: process.env.DB_NAME,
})

connection.connect((err) => {
	if(err) {
		console.error("Erreur de connection : "+ err.stack)
		return;
	}
	console.log("Connexion reussie a la bdd !")
});

// ------------------------- Base de données - Fonction ------------------------------- //

// ----- GET fonction -----
// -> Show periods

app.get("/periods", (req, res) => {
  connection.query(`SELECT * FROM periods`, (err, rows) => {
    if (err) throw err;

    const periodsMap: periodsTypeArray = [];

    (rows as any[]).forEach(row => {
      periodsMap.push({
        id: row.periods_id,
        name: row.periods_name,
        introduction: row.periods_introduction,
        description: row.periods_description,
        time: {
          start: row.periods_time_start,
          end: row.periods_time_end,
        },
        image: row.periods_image,
        image_logo: row.periods_image_logo,
        index_name: row.periods_index_name
      })
      
    });

    res.json(Object.values(periodsMap))
  })
})


console.log("PORT =", port);

app.listen(port, () => {
	console.log(`Example app listening on port ${port}`);
});