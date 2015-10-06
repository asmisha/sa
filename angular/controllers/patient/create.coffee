app = angular.module('sa')

app.controller('patient_create', [
    '$scope'
    'storage'
    '$state'
    ($scope, storage, $state) ->
        $scope.mode = 'create';

        $scope.submit = () ->
            if $scope.patientForm.$invalid
                return
            $scope.patient.id = ++storage.usersCount
            storage.users.push($scope.patient)
            $state.go('patient_list')

])