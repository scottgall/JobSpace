// Import the ORM to create functions that will interact with the database.
var orm = require("../config/orm.js");

var job = {

  selectAll: function(cb) {
    orm.selectAll("jobs", function(res) {
      cb(res);
    });
  },

  insertOne: function(cols, vals, cb) {
    orm.insertOne("jobs", cols, vals, function(res) {
      cb(res);
    });
  },

  updateOne: function(objColVals, condition, cb) {
    orm.updateOne("jobs", objColVals, condition, function(res) {
      cb(res);
    });
  },

  delete: function(condition, cb) {
    orm.delete("jobs", condition, function(res) {
      cb(res);
    });
  },

  findOne: function(id, cb) {
    orm.findOne("jobs", id, function(res) {
      cb(res);
    });
  }
  
};



// Export the database functions for the controller (catsController.js).
module.exports = job;