const { DataTypes } = require('sequelize');
const sequelize = require("../config/db")

const Employee = sequelize.define('employee', {
    // Model attributes are defined here
    id: {
        type: DataTypes.UUIDV4,
        allowNull: false,
        primaryKey: true,
        defaultValue: DataTypes.UUIDV4,
        field: 'id'
    },
    firstName: {
        type: DataTypes.STRING,
        allowNull: false,
        field: 'first_name'
    },
    lastName: {
        type: DataTypes.STRING,
        allowNull: false,
        field: 'last_name'
    },
    birthDate: {
        type: DataTypes.DATE,
        allowNull: false,
        field: 'birth_date'
    },
    location: {
        type: DataTypes.STRING,
        allowNull: false,
        field: 'location'
    },
    title: {
        type: DataTypes.STRING,
        allowNull: false,
        field: 'title'
    },
    department: {
        type: DataTypes.STRING,
        allowNull: false,
        field: 'department'
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
        field: 'email'
    },
    profileImage: {
        type: DataTypes.STRING,
        allowNull: true,
        field: 'profile_image'
    },
    createdAt: {
        type: DataTypes.DATE,
        allowNull: true,
        field: 'created_at'
    },
    updatedAt: {
        type: DataTypes.DATE,
        allowNull: true,
        field: 'updated_at'
    },
}, {
    hooks: {
        beforeCreate(employee) {
            employee.createdAt = new Date();
            employee.updatedAt = new Date();
        },
        afterUpdate(employee) {
            employee.updatedAt = new Date();
        }
    }
});

module.exports = Employee;
