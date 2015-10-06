app = angular.module('sa')

app.factory('storage', ()->
    this.users ?= []
    this.usersCount ?= 0

    return this
)
