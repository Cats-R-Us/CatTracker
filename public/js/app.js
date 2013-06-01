
var app = angular.module('app', function($routeProvider) {
  $routeProvider.when('/', {
    templateUrl: 'partials/thumbnail.html'
  })
})

function BarnCatsAppController ($scope) {


  $scope.adopters = [
    {name: "asdf"},
    {name: "df"},
    {name: "fgh"}
  ]

}

