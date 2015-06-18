module Faststrap
  module InstallActions
    class GitInstallAction < InstallAction

       def self.group
         Faststrap::ActionsGroup::COMAND_LINE
       end


       def self.description
         "Install Git"
       end
       def self.cmd
         Faststrap::InstallActions.brew_install "git"
       end

       def self.ucmd
         Faststrap::InstallActions.brew_uninstall "git"
       end

       def self.name
         "Git"
       end

       def self.installed?
         Faststrap::InstallActions.cmd? "git"
       end

    end
  end
end
