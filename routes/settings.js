const express = require("express");
const router = express.Router();
const setting = require("../controllers/settings");

//@route    POST
//@access   ADMIN
//@desc     CHANGE LANGUAGE
router.post("/changelng", setting.changeLanguage);

module.exports = router;
