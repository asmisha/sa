// Generated by CoffeeScript 1.9.3
(function() {
  var app, routes;

  app = angular.module('sa');

  routes = {
    'patient_list': null,
    'patient_create': {
      template: 'patient/form.html'
    },
    'patient_edit': {
      url: '/patient/:id/edit',
      template: 'patient/form.html'
    }
  };

  app.config([
    '$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
      var defaultUrl, i, k, state;
      $urlRouterProvider.otherwise('/patient/list');
      for (k in routes) {
        i = routes[k];
        defaultUrl = k.split('_').join('/');
        state = {
          url: i && i.url ? i.url : '/' + defaultUrl,
          templateUrl: "partials/" + (i && i.template ? i.template : defaultUrl + '.html'),
          controller: i && i.controller ? i.controller : k
        };
        $stateProvider.state(k, state);
      }
    }
  ]);

}).call(this);

//# sourceMappingURL=routes.js.map
