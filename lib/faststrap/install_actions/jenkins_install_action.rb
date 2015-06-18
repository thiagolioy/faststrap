module Faststrap
  module InstallActions
    class JenkinsInstallAction < InstallAction

       def self.group
         Faststrap::ActionsGroup::CI
       end


       def self.description
         "Install Jenkins CI"
       end
       def self.cmd
         Faststrap::InstallActions.brew_install "jenkins"
       end

       def self.ucmd
         Faststrap::InstallActions.brew_uninstall "jenkins"
       end

       def self.name
         "Jenkins"
       end

       def self.installed?
         Faststrap::InstallActions.cmd? "jenkins"
       end

    end
  end
end
