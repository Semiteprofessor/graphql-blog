/** @format */

const knex = require("../mysql");
const promise = require("bluebird");
const path = require("path");
const fs = require("fs");

const db = knex.client.config.connection.database || null;

const replaceAll = (str, delimeter, replacement) => {
  return str.split(delimeter).join(replacement);
};

fs.readdir(path.resolve(__dirname, "../migrations"), "utf-8", (err, files) => {
  if (err) throw Error(err);
  return promise
    .each(files, (fileName) => {
      return new Promise((resolve, reject) => {
        fs.readFile(
          path.resolve(__dirname, `../migrations/${fileName}`),
          "utf-8",
          (err, sql) => {
            if (err) reject(err);
            return knex.raw(replaceAll(sql, "{}", db)).then(resolve);
          }
        );
      });
    })
    .then(() => console.log("Migration have run successfully."))
    .catch((err) => {
      throw new Error(err);
    });
});
