var request = require('supertest');
var app = require('../app.js');

describe('GET /', function() {
  it('respond with hello', function(done) {
    request(app).get('/').expect('Continuous Integration and Deployment is Working Successfully!', done);
  });
});
