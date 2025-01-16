import { Router } from "express";

import { keysToCamel } from "../common/utils";
import { admin } from "../config/firebase";
import { db } from "../db/db-pgp"; // TODO: replace this db with
import { verifyRole } from "../src/middleware";

export const usersRouter = Router();

// Get all users
usersRouter.get("/", async (req, res) => {
  try {
    const users = await db.query(`SELECT * FROM users`);

    res.status(200).json(keysToCamel(users));
  } catch (err) {
    res.status(400).send(err.message);
  }
});




