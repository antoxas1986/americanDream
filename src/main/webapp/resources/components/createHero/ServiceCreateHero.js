(function(){ 
	angular.module('services')
	.factory('createHeroService', function($resource, $rootScope){
		return {
			
			     getHeroNames: $resource('/hero',{},{
				'get':{method:'GET',isArray:true}
			})
			
			
			
		}
		
			
			
			
		
	})
	
})();