(function() {
	angular.module('services').factory('createHeroService',
			function($resource, $rootScope) {
				return {
                    hero : $resource('/hhhero', {}, {
						'create' : {
							method : 'POST'
						}
					}),
					
					getHeroNames : $resource('/hero', {}, {
						'get' : {
							method : 'GET',
							isArray : true
						}
					}),

					updateHero : $resource('/hero', {}, {
						'update' : {
							method : 'POST'
						}
					}),

				}

			})

})();