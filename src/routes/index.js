var express = require('express');
var router = express.Router();

/* GET home page. */

router.get('/', function(req, res) {
  res.render('index', { title: 'Polaris Micro 1' });
});

// -- Return user profile from WSO2 APIM JWT token 
router.get('/profile', function(req, res, next) {
  res.send(req.headers);
});

module.exports = router;
