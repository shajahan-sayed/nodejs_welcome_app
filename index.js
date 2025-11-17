const express = require('express');
const path = require('path');

const app = express();
const PORT = 3000;

// Serve static HTML
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
  res.send('<h1>Hi Shajahan</h1>');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
