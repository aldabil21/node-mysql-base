const express = require("express");
const router = express.Router();
const path = require("path");

const auth = require("./auth");
const settings = require("./settings");
const languages = require("./languages");
const admins = require("./admins");
const profile = require("./profile");

// router.get((req, res) =>
//   res.sendFile(path.join(__dirname, "..", "..", "dashboard", "index.html"))
// );

router.use("/auth", auth);
router.use("/settings", settings);
router.use("/languages", languages);
router.use("/admins", admins);
router.use("/profile", profile);

module.exports = router;
