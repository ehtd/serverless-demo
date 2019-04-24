'use strict';

const simple = async (event, context, callback) => {
    callback(null, 'Taco time');
};

module.exports = {
    simple,
};
