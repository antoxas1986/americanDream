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
		.when('/work', {
			templateUrl : '/resources/components/Work/partialWork.html',
			controller : 'workController',
		})
		.when('/party', {
			templateUrl : '/resources/components/party/partialParty.html',
			controller : 'partyController',
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