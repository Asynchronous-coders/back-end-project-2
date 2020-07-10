const cocktail = require('./controllers/cocktail-controller');
const user = require('./controllers/user-controller');

exports.route = (app) => {
    app.get('/status',cocktail.status);
    app.get('/user/:id', user.read);
    app.post('/user',user.newUser);
}