(function() {
	angular.module('controllers').controller('indexController',
			[ '$rootScope', '$scope', 'indexService',
			  function($rootScope, $scope, indexService) {
				$scope.start = function(){
					alert("Some start code");
				};
				//This makes call to back-end to bring all available hero`s names.
				indexService.getHeroNames.get().$promise.then(function(data){
					$scope.heroNames = data;
				});
				
					
					
					
					
					
					
			} ]);
}());