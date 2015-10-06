app = angular.module('sa')

app.controller('patient_list', [
    '$scope'
    'storage'
    ($scope, storage) ->
        $scope.users = storage.users

        $scope.deletePatient = (id) ->
            for i,k in $scope.users
                if i.id == id
                    found = true
                if found
                    $scope.users[k] = $scope.users[k + 1]
            $scope.users.pop()

        $scope.sort = null;
        $scope.setSort = (f) ->
            if $scope.sort == f
                $scope.sort = '-' + f
            else
                $scope.sort = f
])