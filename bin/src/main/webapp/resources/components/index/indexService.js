(function(){ 
	angular.module('services').factory('indexService', function($resource, $rootScope){
		return {
			object: $resource('url',{},{
				'method':{method:'GET',isArray:true},
				'moreMethod':{method:'POST'}
			})
		}
	})
})();