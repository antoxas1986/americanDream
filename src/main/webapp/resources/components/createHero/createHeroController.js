(function() {
	angular.module('controllers').controller('createHeroController',
			[ '$rootScope', '$scope', 'createHeroService',
			  function($rootScope, $scope, createHeroService) {
				
				
				$scope.create = function(){
					if (inputName.value == ""){
						alert("Your Hero needs a name");
					}
					var gender;
					var hero = {};
				    hero.name = inputName.value;
				    hero.age = 21;
				    hero.gender = gender; 
				    hero.experiance = 0;
				    hero.money = 100;
				    hero.strength = 5;      //10 level scale
				    hero.level = 1;
				    hero.happieness = 2;    //10 level scale
				    console.log(hero);
					
				};
					
		
			} ]);
}());