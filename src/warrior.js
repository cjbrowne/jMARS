var redcode = require('./compiler.js');

var Warrior = function (source, options) {
    this.redcode = redcode.compile(source);
}

module.exports = Warrior;
