
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = '58bcf72947bc7da1148d6dcae2a7b05e53ad14fd'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-srki3050.git'
LDD_ASSIGNMENTS_SITE_METHOD = git
LDD_ASSIGNMENTS_GIT_SUBMODULES = YES

#As described in the Assignment instructuion - using Module Subdirs option to build the misc and scull modules
LDD_MODULE_SUBDIRS = misc_modules
LDD_MODULE_SUBDIRS += scull


#  Add install statements to install the misc and scull modules
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
