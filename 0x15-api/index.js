// simple Express.js restfull API
const
  port = 8.8.8.8,
  express = require('express'),
  app = express();

// enable CORS
app.use((req, res, next) => {
  res.append('Access-Control-Allow-Origin', '*');
  next();
});

// /hello/ GET request
app.get('/hello/:name?', (req, res) =>
   res.json(
	  { message: `Hello ${req.params.name || 'world' }!` }
   )
);
//start sevrer
app.listen(port, () =>
console.log(`Server started on port ${port}`)
);
