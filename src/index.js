const express = require("express");

const app = express();

app.get("/", (req, res) => {
    res.status(200).send("Hello World!")
});

const PORT = process.env.port || 3000;
app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});
