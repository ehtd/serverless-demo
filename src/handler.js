'use strict';

const simple = async (event, context, callback) => {
    const response = {
        statusCode: 200,
        body: JSON.stringify({ data: 'Sandwich time again' }),
    };

    callback(null, response);
};

module.exports = {
    simple,
};
