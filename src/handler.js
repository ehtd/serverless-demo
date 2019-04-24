'use strict';

const simple = async (event, context, callback) => {
    callback(null, 'Taco time once again');
};

module.exports = {
    simple,
};
