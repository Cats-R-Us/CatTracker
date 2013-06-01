function AdopterListCtrl($scope, $http) {
  // $http.get('adopters/adopters.json').success(function(data) {
  //   $scope.phones = data;
  // });

  $scope.adopters = [
    {id: "1", name: "asdf"},
    {id: "2", name: "df"},
    {id: "3", name: "fgh"}
  ]
}

function AdopterDetailCtrl($scope, $routeParams) {
  $scope.adopterId = $routeParams.adopterId
}
