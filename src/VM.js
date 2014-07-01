const DEFAULT = {
    CORE_SIZE: 1024
}

var VM = function (options) {
    this.settings = {};
    this.settings.coreSize = options.coreSize || DEFAULT.CORE_SIZE;
}

VM.prototype = {

}

module.exports = VM;
