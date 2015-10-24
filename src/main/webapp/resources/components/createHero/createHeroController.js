(function() {
	angular.module('controllers').controller(
			'createHeroController',
			[
					'$rootScope',
					'$scope',
					'createHeroService',
					function($rootScope, $scope, createHeroService) {
						$scope.hero = {
							age : 21,
							experiance: 0,
							money : 100,
							strength: 2,
							level: 0,
							happieness: 5
						};

						$scope.create = function(hero) {
							if (inputName.value == "") {
								alert("Your Hero needs a name");
							}
							// //Option2 inserting hero from html. (ex:
							 //ng-model=("updateHero(hero)")
							 $scope.updateHero = function(hero) {
							 createHeroService.hero.update(hero, function() {
								 console.log("yes")
							// //do something here after y update hero. Change page
							// or something else.
							 });
							 };
							
						};
						// Option1 inserting hero from scope
						//$scope.updateHero = function() {
							//console.log("before");
							//createHeroService.hero.update($scope.hero,
									//function() {
								      //console.log("success");
										// do something here after y update
										// hero. Change page or something
										// else.

									//});
						//};

						

					} ]);
}());