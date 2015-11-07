angular.module('americanDream').controller('ModalDemoCtrl',
		function($scope, $uibModal, $log) {

			$scope.animationsEnabled = true;

			$scope.open = function() {

				var modalInstance = $uibModal.open({
					animation : $scope.animationsEnabled,
					templateUrl : 'myModalContent.html',
					controller : 'ModalInstanceCtrl',
					size : 'sm',
					resolve : {
						items : function() {
							return $scope.heroNames;
						}
					}
				});

				modalInstance.result.then(function(selectedItem) {
					$scope.selected = selectedItem;
				}, function() {
					$log.info('Modal dismissed at: ' + new Date());
				});
			};

			$scope.toggleAnimation = function() {
				$scope.animationsEnabled = !$scope.animationsEnabled;
			};

		});

// Please note that $modalInstance represents a modal window (instance)
// dependency.
// It is not the same as the $uibModal service used above.

angular.module('americanDream')
		.controller(
				'ModalInstanceCtrl',
				[
				        '$rootScope',
						'$scope',
						'$uibModalInstance',
						'items',
						'$location',
						'indexService',
						function($rootScope, $scope, $uibModalInstance, items, $location,
								iService) {

							$scope.items = items;
							$scope.selected = {
								item : $scope.items[0]
							};

							$scope.ok = function(name) {
								$uibModalInstance.close($scope.selected.item);								
								
								iService.getHero.get({
									name : name
								}, function(data) {
									$rootScope.hero = data;
									console.info(data);
									$location.path('/gamePlay');
								});

							};

							$scope.cancel = function() {
								$uibModalInstance.dismiss('cancel');
							};
						} ]);