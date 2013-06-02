function AdopterListCtrl($scope, $http) {

  $http.get("/soda/barncats").success(function(data) {
    $scope.adopters = data
  })
}

function AdopterDetailCtrl($scope, $http, $routeParams) {
  $scope.adopterId = $routeParams.adopterId

  $http.get("/soda/barncats").success(function(data) {
    // at some point we will load these up front
    $scope.allCounties = _.unique(_.pluck(data, "county"))
    $scope.allStates = _.unique(_.pluck(data, "state"))

    $scope.adopter = data[$routeParams.adopterId]
  })
}
