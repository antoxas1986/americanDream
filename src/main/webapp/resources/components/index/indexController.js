(function() {
	angular.module('controllers').controller('indexController',
			[ '$rootScope', '$scope', 'indexService',
			  function($rootScope, $scope, iService) {
				
				
				$scope.start = function(){
					alert("hello");
				};
				
				
				
				//This makes call to back-end to bring all available hero`s names.

			      iService.getHeroNames.get().$promise.then(function(data){
					$scope.heroNames = data;
					console.log($scope.heroNames)
				});

//			      iService.getHeroNames.get().$promise.then(function(data){
//					$scope.heroNames = data;
//					
//				});

				
					
						
					
			} ]);
}());