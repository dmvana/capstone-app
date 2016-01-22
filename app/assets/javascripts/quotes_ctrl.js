/* global angular */

(function() {
  angular.module('app').controller("quotesCtrl", function($scope, $http) {
    $scope.setup = function(currentUserId) {
      $http.get('/api/v1/quotes.json').then(function(response) {
        $scope.quotes = response.data.quotes;
        $scope.userId = currentUserId;
        console.log($scope.quotes);
      });
    };

    $scope.addToFavs = function(quote) {
      console.log(quote);
      var favoriteQuote = {
        user_id: quote.user.id,
        quote_id: quote.id,
        description: quote.description
      };
      $http.post('/api/v1/favorite_quotes.json', favoriteQuote);
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
