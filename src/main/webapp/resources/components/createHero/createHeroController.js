(function() {
	angular.module('controllers').controller(
			'createHeroController',
			[
					'$rootScope',
					'$scope',
					'createHeroService','$location','indexService',
					function($rootScope, $scope, createHeroService, $location, iService) {
						$scope.hero = {
							age : 21,
							//gender : m,
							experiance : 0,
							money : 100,
							strength : 2,
							level : 0,
							happieness : 5
						};

						$scope.create = function() {
							
							createHeroService.hero.create($scope.hero,
										function() {
											$location.path('/');
										});
							
						};
						//alert("Nice name");
						// Option1 inserting hero from scope
						
						// //Option2 inserting hero from html. (ex:
						// ng-model=("updateHero(hero)")
						// $scope.updateHero = function(hero) {
						// ServiceCreateHero.hero.update(hero, function() {
						// //do something here after y update hero. Change page
						// or something else.
						// });
						// };

					} ]);
}());