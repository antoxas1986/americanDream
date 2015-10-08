(function(){ 
	angular.module('services').factory('indexService', function($resource, $rootScope){
		return {
			user: $resource('/user',{},{
				'get':{method:'GET',isArray:true},
				'save':{method:'POST'}
			})
		}
	})
})();