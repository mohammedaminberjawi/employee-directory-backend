const express = require('express');

const {getAllEmployee} = require("../controllers/employeeController");

const EmployeeRouter = express.Router();

EmployeeRouter.get('/', getAllEmployee);

module.exports = EmployeeRouter;
