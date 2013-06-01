
angular.module('barncats', [])
  .config(['$routeProvider', function($routeProvider) {
  $routeProvider
    .when('/adopters', {
      templateUrl: 'partials/adopter-list.html',
      controller: AdopterListCtrl
    })
    .when('/adopters/:adopterId', {
      templateUrl: 'partials/adopter-detail.html',
      controller: AdopterDetailCtrl
    })
    .otherwise({
      redirectTo: '/adopters'
    })
  }])
