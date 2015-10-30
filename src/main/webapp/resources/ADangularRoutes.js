(function() {
	angular.module('routes').config(config);

	config.$inject = [ '$routeProvider', '$locationProvider', '$httpProvider' ];

	function config($routeProvider, $locationProvider, $httpProvider) {
		$routeProvider
		.when('/', {
			templateUrl : '/resources/components/index/partialIndex.html',
			controller : 'indexController',
		})
		.when('/createHero', {
			templateUrl : '/resources/components/createHero/partialCreateHero.html',
			controller : 'createHeroController',
		})
		.when('/gamePlay', {
			templateUrl : '/resources/components/gamePlay/partialGamePlay.html',
			controller : 'gamePlayController',
		})
		
		.otherwise({
			redirectTo : '/'
		});

		$locationProvider.html5Mode({
			enabled : true,
			requireBase : false
		});
		$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
	}
	;
})();