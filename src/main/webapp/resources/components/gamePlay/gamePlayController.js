angular
		.module('controllers')
		.controller(
				'gamePlayController',
				[
						'$rootScope',
						'$scope',
						'gamePlayService',
						'$timeout',
						function($rootScope, $scope, gamePlayService, $timeout) {

							$scope.work = function() {

							}
							$scope.eat = function() {

								var foodSelect = angular.element(document
										.querySelector('#selectFood'));
								foodSelect.empty();
								foodSelect.append('<select id="select">' 
											+ '<option value="apple">Apple</option>'
											+ '<option value="soup">Soup</option>'
											+ '<option value="burito">Burito</option>'
											+ '</select>'
											);
								
							};
							$scope.rest = function() {
								$scope.hero.strength += 3;
								document.getElementById("rest").disabled = true;

								var seconds_left = 10;
								var interval = setInterval(
										function() {
											document.getElementById('timer').innerHTML = --seconds_left;

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
