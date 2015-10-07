/**
 * Angular Main Javascript, Starting point for single page app
 */

(function() {
	var controllers = angular.module('controllers', []);
	var directives = angular.module('directives', []);
	var services = angular.module('services', []);
	var routes = angular.module('routes', []);

	var myApp = angular.module('americanDream', [ 'ngRoute', 'directives',
			'controllers', 'services', 'routes' ]);
}());