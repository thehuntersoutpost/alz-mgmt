using './main.bicep'

// General Parameters
param parLocations = [
  'centralus'
  '<eastus2>'
]
param parEnableTelemetry = true

param platformManagementConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'management'
  managementGroupParentId: 'platform'
  managementGroupIntermediateRootName: 'alz'
  managementGroupDisplayName: 'Management'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['a9b9a8f5-874c-43ef-8e15-d70f38d8534c']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  // No policy assignments in platform-management currently
}
