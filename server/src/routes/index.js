const router = require("express").Router();
const mysqlConnection = require("../db");

router.get("/", async (req, res) => {

  mysqlConnection.query("SELECT * FROM empleado, supervisor, empresa", (err, rows, fileds) => {
    if (!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });
});


router.post("/", async (req, res) => {

})

module.exports = router;
