module Faststrap
  module InstallActions
    class CalabashBundleInstallAction < InstallAction

      @@gems = ["calabash-common",'calabash-cucumber',
        'cs-bdd','blabla']

       def self.group
         Faststrap::ActionsGroup::TESTS
       end

       def self.description
         "Install Calabash Bundle[calabash-common,calabash-cucumber,cs-bdd,blabla]"
       end
       def self.cmd
         @@gems.map { |d| Faststrap::InstallActions.gem_install d }
       end

       def self.ucmd
         @@gems.map { |d| Faststrap::InstallActions.gem_uninstall d }
       end


       def self.name
         "Calabash"
       end

       def self.installed?
         Faststrap::InstallActions.cmd? "calabash-common"
       end

    end
  end
end
