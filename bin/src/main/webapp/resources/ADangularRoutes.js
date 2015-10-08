(function() {
	angular.module('routes').config(config);

	config.$inject = [ '$routeProvider', '$locationProvider', '$httpProvider' ];

	function config($routeProvider, $locationProvider, $httpProvider) {
		$routeProvider.when('/', {
			templateUrl : '/resources/components/index/partialIndex.html',
			controller : 'indexController',
		}).when('put url', {
			templateUrl : 'url to partial',
			controller : 'controller name from partialcontroller file',
		}).otherwise({
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