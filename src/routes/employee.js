const express = require('express');

const {getAllEmployee, getEmployeeByPrimaryKey} = require("../controllers/employeeController");

const EmployeeRouter = express.Router();

EmployeeRouter.get('/', getAllEmployee);

EmployeeRouter.get('/:id', getEmployeeByPrimaryKey);

module.exports = EmployeeRouter;
