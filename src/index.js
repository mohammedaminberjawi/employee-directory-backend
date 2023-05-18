require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors');

const EmployeeRouter = require('./routes/employee')

const app = express();

app.use(cors());
app.use(bodyParser.json());

app.get("/", (req, res) => {
    res.status(200).send("Hello World!")
});

app.use('/api/employees', EmployeeRouter);

app.use('/images', express.static('./images'));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});
