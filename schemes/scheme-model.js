const db = require("../data/db-config.js");
module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
};
function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes')
        .where({ id })
        .first();
}
function findSteps(scheme_id) {
    return db('steps').where({ scheme_Id: scheme_id });
}