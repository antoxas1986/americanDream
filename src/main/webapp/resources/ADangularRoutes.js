(function() {
	angular.module('routes').config(config);

	config.$inject = [ '$routeProvider', '$locationProvider', '$httpProvider' ];

	function config($routeProvider, $locationProvider, $httpProvider) {
		$routeProvider.when('/', {
			templateUrl : '',
			controller : '',
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