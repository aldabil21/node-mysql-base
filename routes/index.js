const express = require("express");
const router = express.Router();
const path = require("path");

//User Routes
const auth = require("./auth");
const settings = require("./settings");

// router.get("/", (req, res) =>
//   res.sendFile(path.join(__dirname, "..", "client", "index.html"))
// );
router.use("/auth", auth);
router.use("/config", settings);

module.exports = router;
