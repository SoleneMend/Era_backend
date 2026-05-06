import dotenv from "dotenv";
dotenv.config();

import express, { Application } from "express";
import mysql from "mysql2";
import cors from "cors";

const port: number = Number(process.env.APP_PORT) || 3310;

const app: Application = express();

// ---- App fontion ----

app.use(cors());

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



console.log("PORT =", port);

app.listen(port, () => {
	console.log(`Example app listening on port ${port}`);
});