app = angular.module('sa')

app.controller('patient_edit', [
    '$scope'
    'storage'
    ($scope, storage) ->
        $scope.mode = 'edit'
])