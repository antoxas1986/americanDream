(function() {
	angular
			.module('controllers')
			.controller(
					'gamePlayController',
					[
							'$rootScope',
							'$scope',
							'gamePlayService',
							'$timeout',
							function($rootScope, $scope, gamePlayService,
									$timeout) {

								$scope.eat = function() {

								};

								$scope.rest = function() {
									$scope.hero.strength +=3;
									console.log($scope.hero.strength);
									document.getElementById("rest").disabled = true;

									var seconds_left = 10;
									var interval = setInterval(
											function() {
												document
														.getElementById('timer').innerHTML = --seconds_left;

												if (seconds_left <= 0) {
													document
															.getElementById('timer').innerHTML = '';
													clearInterval(interval);
												}
											}, 1000);

									$timeout(callAtTimeout, 10000);
									function callAtTimeout() {
										document.getElementById("rest").disabled = false;

									}

								};

								$scope.party = function() {

								};

							} ]);
}());