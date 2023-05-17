const express = require('express');

const {getAllEmployee, getEmployeeByPrimaryKey, createEmployee, uploadSingle} = require("../controllers/employeeController");

const EmployeeRouter = express.Router();

EmployeeRouter.get('/', getAllEmployee);

EmployeeRouter.get('/:id', getEmployeeByPrimaryKey);

EmployeeRouter.post('/' , uploadSingle, createEmployee);

module.exports = EmployeeRouter;
