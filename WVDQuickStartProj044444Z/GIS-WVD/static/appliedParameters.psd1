@{
    # General Information #
    # =================== #
    # Environment
    subscriptionId                        = '80e2c3df-bffc-4b44-8111-dda0fe5e7597'      # Azure Subscription Id
    tenantId                              = '98e681e6-4d75-476f-bbca-b19a56c0a389'            # Azure Active Directory Tenant Id
    objectId                              = ''            # Object Id of the serviceprincipal, found in Azure Active Directory / App registrations
  
    # ResourceGroups
    location                              = 'westus2'            # Location in which WVD resources will be deployed
    resourceGroupName                     = 'GIS-WVD-TEST'   # Name of the resource group in which WVD resources will be deployed
    #######################

    # Key Vault related #
    # ================= #  
    keyVaultName                          = 'keyvault20210114T044444Z'        # Name of the keyvault where the admin password is stored as secret
    AdminPasswordSecret                   = 'adminPassword'         # Default, name of the secret in the keyvault
    #####################
    
    # Storage related #
    # =============== #
    wvdAssetsStorage                      = 'assets0114t044444z'          # Name of assets storage account
    profilesStorageAccountName            = 'profiles0114t044444z'        # Name of the profiles storage account
    storageAccountSku                     = 'Standard_LRS'          # default, storage account SKU
    profilesShareName                     = 'wvdprofiles'           # Name of the file share in the profiles storage account where profiles will be stored
    ###################

    # Host pool related #
    # ================== #
    hostpoolName                          = 'QS-WVD-HP'                         # Name of the WVD host pool
    hostpoolType                          = 'Pooled'                            # Type of host pool, can be 'Personal' or 'Pooled' (default)
    maxSessionLimit                       = 16                                  # default
    loadBalancerType                      = 'BreadthFirst'                      # Load-balancing algorithm
    vmNamePrefix                          = 'QS-WVD-VM'                         # Prefix for the WVD VMs that will be deployed
    vmSize                                = 'Standard_D2s_v3'                   # The VM SKU
    vmNumberOfInstances                   = 2                                   # Number of VMs to be deployed
    vmInitialNumber                       = 1                                   # default
    diskSizeGB                            = 128                                 # Size of the VMs' disk
    vmDiskType                            = 'Premium_LRS'                       # SKU of the above disk
    domainJoinUser                        = 'gistestdadmin@gistest.local'            # The domain join account UPN
    domainName                            = 'gistest.local'              # domain for the VMs to join, taken from domainJoinUser
    adminUsername                         = 'gistestdadmin'          # domain controller admin username, taken from domainJoinUser
    computerName                          = 'GISWVDTEST-DC1'                    # The name of the VM with the domain controller on it. Required only when using AD Identity Approach.
    vnetName                              = 'GISWVDTEST-VNET'                # Name of the virtual network with the domain controller
    vnetResourceGroupName                 = 'GIS-WVD-TEST' # Name of the resource group with the domain controller VM and VNET in it
    subnetName                            = 'GISWVDTEST-VNET-SN'              # Name of the subnet for the VMs to join
    enablePersistentDesktop               = $false                              # WVD setting
    ######################

    # App group related #
    # ================== #
    appGroupName                          = 'QS-WVD-RAG'                        # Remote app group name
    DesktopAppGroupName                   = 'QS-WVD-DAG'                        # Desktop app group name
    targetGroup                           = 'WVDTestUsers'                     # Name of the user group to be assigned to the WVD environment. Only change to an existing group as group is created only in the initial ARM deployment.
    principalIds                          = '901b48ef-12ca-4831-a1fe-fb01065f02a5'                    # principal ID of the above test user group
    workSpaceName                         = 'QS-WVD-WS'                         # Name of the WVD workspace
    workspaceFriendlyName                 = 'WVD Workspace'                     # User-facing friendly name of the above workspace
    ######################

    # Imaging related #
    # ================ #
    imagingResourceGroupName              = 'QS-WVD-IMG-RG'                     # [Not used, can be used for custom imaging]
    imageTemplateName                     = 'QS-WVD-ImageTemplate'              # [Not used, can be used for custom imaging]
    imagingMSItt                          = '[imagingMSItt]'                    # [Not used, can be used for custom imaging]
    sigGalleryName                        = '[sigGalleryName]'                  # [Not used, can be used for custom imaging]
    sigImageDefinitionId                  = '<sigImageDefinitionId>'            # [Not used, can be used for custom imaging]
    imageDefinitionName                   = 'W10-20H1-O365'                     # [Not used, can be used for custom imaging]
    osType                                = 'Windows'                           # default
    publisher                             = 'microsoftwindowsdesktop'           # default
    offer                                 = 'office-365'                        # This image includes Office 365
    sku                                   = '20h1-evd-o365pp'                   # Points to Windows 10 Enterprise Multi-Session, build 2004
    imageVersion                          = 'latest'                            # default
    ######################

    # Authentication related
    # ==================== #
    identityApproach                      = 'AD'                # (AD or Azure AD DS) identity approach to use
}
