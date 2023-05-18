const express = require('express');

const {getAllEmployee, getEmployeeByPrimaryKey, createEmployee, updateEmployee, deleteEmployee, uploadSingle} = require("../controllers/employeeController");

const EmployeeRouter = express.Router();

EmployeeRouter.get('/', getAllEmployee);

EmployeeRouter.get('/:id', getEmployeeByPrimaryKey);

EmployeeRouter.post('/' , uploadSingle, createEmployee);

EmployeeRouter.put('/:id', uploadSingle, updateEmployee);

EmployeeRouter.delete('/:id', deleteEmployee);

module.exports = EmployeeRouter;
