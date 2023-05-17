require('dotenv').config()
const multer = require("multer");
const path = require("path");

const Employee = require("../models/employee");

const prepareEmployeeData = (req) => {
    let info = {
        firstName: req.body.firstName,
        lastName: req.body.lastName,
        birthDate: req.body.birthDate,
        location: req.body.location,
        title: req.body.title,
        department: req.body.department,
        email: req.body.email,
    }

    if(req.file && req.file.path) {
        info.profileImage = `${process.env.BASE_URL}${req.file.path}`;
    }

    return info
}

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './Images')
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname))
    }
})

const uploadSingle = multer({
    storage: storage,
    limits: { fieldSize: 25 * 1024 * 1024 },
    fileFilter: (req, file, cb) => {
        const fileTypes = /jpeg|jpg|png|gif/
        const mimetype = fileTypes.test(file.mimetype)
        const extname = fileTypes.test(path.extname(file.originalname))

        if(mimetype && extname) {
            return cb(null, true)
        }

        cb("Give proper file format to upload")
    }
}).single("profileImage")

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

const createEmployee = async (req, res) => {
    const duplicateUserWithEmail = await Employee.findOne({where: {email: req.body.email}})
    if(duplicateUserWithEmail != null) {
        res.sendStatus(409)
    } else {

        const employee = await Employee.create(prepareEmployeeData(req));
        res.json(employee);
    }
}

module.exports = {
    getAllEmployee,
    getEmployeeByPrimaryKey,
    createEmployee,
    uploadSingle
}
