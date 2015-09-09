var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res) {
  res.send({ username: 'shuey' });
});

module.exports = router;
