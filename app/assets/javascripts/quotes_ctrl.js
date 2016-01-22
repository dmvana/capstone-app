/* global angular */

(function() {
  angular.module('app').controller("quotesCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/quotes.json').then(function(response) {
        $scope.quote = response.data;
      });
    };

     // $scope.addQuote = function(inputQuote,) {
     //   var quote = {
     //     description: inputQuote,
     //   };
     //   $scope.quote.push(quote);
     // };
 
     // $scope.deleteQuote = function(inputIndex) {
     //   $scope.quote.splice(inputIndex, 1);
     // };
    window.$scope = $scope;


  });
})();