module Faststrap
  module InstallActions
    class LcovInstallAction < InstallAction

       def self.group
         Faststrap::ActionsGroup::TESTS
       end

       def self.description
         "Install lcov"
       end
       def self.cmd
         Faststrap::InstallActions.brew_install "lcov"
       end

       def self.ucmd
         Faststrap::InstallActions.brew_uninstall "lcov"
       end

       def self.name
         "lcov"
       end

       def self.installed?
         Faststrap::InstallActions.cmd? "lcov"
       end
    end
  end
end
