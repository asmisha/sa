app = angular.module('sa')

routes =
    'patient_list': null
    'patient_create':
        template: 'patient/form.html'
    'patient_edit':
        url: '/patient/:id/edit'
        template: 'patient/form.html'

app.config(['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('/patient/list')

    for k,i of routes
        defaultUrl = k.split('_').join('/')
        state =
            url: if i && i.url then i.url else '/' + defaultUrl
            templateUrl: "partials/#{if i && i.template then i.template else defaultUrl + '.html'}"
            controller: if i && i.controller then i.controller else k

        $stateProvider.state(k, state)

    return
])
