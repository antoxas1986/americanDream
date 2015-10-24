(function() {
	angular.module('controllers').controller('createHeroController',
			[ '$rootScope', '$scope', 'createHeroService',
			  function($rootScope, $scope, createHeroService) {
				$scope.hero ={age:21,money:100};
				
				$scope.create = function(hero){
					if (inputName.value == ""){
						alert("Your Hero needs a name");
					}
				};
//				//Option1 inserting hero from scope
//				$scope.updateHero = function() {
//					createHeroService.hero.update($scope.hero, function() {
//						//do something here after y update hero. Change page or something else.
//					});
//				};
//				//Option2 inserting hero from html. (ex: ng-model="updateHero(hero)")
//				$scope.updateHero = function(hero) {
//					createHeroService.hero.update(hero, function() {
//						//do something here after y update hero. Change page or something else.
//					});
//				};
	
				
				
					
		
			} ]);
}());