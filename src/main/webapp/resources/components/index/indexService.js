(function(){ 
	angular.module('services')
	.factory('indexService', function($resource, $rootScope){
		return {

				getHeroNames: $resource('/hero',{},{
				'get':{method:'GET',isArray:true}
			})
		}
	})
	
})();