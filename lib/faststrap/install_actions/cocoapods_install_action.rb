module Faststrap
  module InstallActions
    class CocoapodsInstallAction < InstallAction

       def self.group
         Faststrap::ActionsGroup::INSTALLERS
       end


       def self.description
         "Install Cocoapods"
       end
       def self.cmd
         Faststrap::InstallActions.gem_install "cocoapods"
         system 'pod setup'
       end

       def self.ucmd
         Faststrap::InstallActions.gem_uninstall "cocoapods"
       end

       def self.name
         "Cocoapods"
       end

       def self.installed?
         Faststrap::InstallActions.cmd? "cocoapods"
       end

    end
  end
end
