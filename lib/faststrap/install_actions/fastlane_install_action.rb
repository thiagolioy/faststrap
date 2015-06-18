module Faststrap
  module InstallActions
    class FastlaneInstallAction < InstallAction

       def self.group
         Faststrap::ActionsGroup::CI
       end


       def self.description
         "Install Fastlane"
       end
       def self.cmd
         Faststrap::InstallActions.gem_install "fastlane"
       end

       def self.ucmd
         Faststrap::InstallActions.gem_uninstall "fastlane"
       end

       def self.name
         "Fastlane"
       end

       def self.installed?
         Faststrap::InstallActions.cmd? "fastlane"
       end

    end
  end
end
