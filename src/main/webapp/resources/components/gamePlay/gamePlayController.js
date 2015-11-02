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
								document.getElementById('selectFood').style.display = "";
								var foodSelect = angular.element(document
										.querySelector('#selectFood'));
								foodSelect.empty();
								foodSelect.append('<select id="select" onchange ="eatThis()">'
										    + '<option value="apple">Food Menu</option>'
											+ '<option value="apple">Apple</option>'
											+ '<option value="soup">Soup</option>'
											+ '<option value="burrito">Burrito</option>'
											+ '<option value="cancel" style ="color:red">Cancel</option>'
											+ '</select>'
											);	
							};
							    
							    eatThis = function(){
								var item = document.getElementById("select").value;
								if (item == "apple" && $scope.hero.money >= 1){
									document.getElementById('selectFood').style.display = "none";
									$scope.hero.money -= 1;
									$scope.hero.strength += 1;
								}else if(item == "soup" && $scope.hero.money >=5){
									document.getElementById('selectFood').style.display = "none";
									$scope.hero.money -= 5;
									$scope.hero.strength += 2;
								}else if(item == "burrito" && $scope.hero.money >=10){
									document.getElementById('selectFood').style.display = "none";
									$scope.hero.money -= 10;
									$scope.hero.strength += 3;
								}else{
									document.getElementById('selectFood').style.display = "none";
							    }
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
