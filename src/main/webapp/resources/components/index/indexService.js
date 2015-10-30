(function(){ 
	angular.module('services')
	.factory('indexService', function($resource, $rootScope){
		return {

				getNames: $resource('/names',{},{
				'get':{method:'GET',isArray:true}
			    }),
			    getHero: $resource('/hero/:name',{name: '@name'},{
				'get':{method:'GET'}
				
			    })
		}
	})
	
})();