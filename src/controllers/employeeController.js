const Employee = require("../models/employee");

const getAllEmployee = async (req, res) => {
    const employees = await Employee.findAll();
    res.json(employees);
}

const getEmployeeByPrimaryKey = async (req, res) => {
    const employee = await Employee.findByPk(req.params.id);
    if (!employee) {
        res.sendStatus(404);
    } else {
        res.json(employee);
    }
}

module.exports = {
    getAllEmployee,
    getEmployeeByPrimaryKey
}
