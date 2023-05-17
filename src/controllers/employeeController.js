const Employee = require("../models/employee");

const getAllEmployee = async (req, res) => {
    const employees = await Employee.findAll();
    res.json(employees);
}

module.exports = {
    getAllEmployee
}
