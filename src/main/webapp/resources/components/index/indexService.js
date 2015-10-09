(function(){ 
	angular.module('services')
	.factory('indexService', function($resource, $rootScope){
		return {
			getHeroNames: $resource('/heroNames',{},{
				'get':{method:'GET',isArray:true}
			})
		}
	})
	
})();