(function() {
	angular.module('services').factory('createHeroService',
			function($resource, $rootScope) {
				return {
                    hero : $resource('/hero', {}, {
						'create' : {
							method : 'POST'
						}
					}),
					
					getHeroNames : $resource('/hero', {username: '@username'}, {
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
