(function() {
	angular.module('controllers').controller('indexController',
			[ '$rootScope', '$scope', 'indexService',
			  function($rootScope, $scope, indexService) {
				$scope.start = function(){
					alert("Some start code");
				}
			} ]);
}());