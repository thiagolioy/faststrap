module Faststrap
  module InstallActions
    class HomebrewInstallAction < InstallAction

       def self.group
         Faststrap::ActionsGroup::INSTALLERS
       end


       def self.description
         "Install Homebrew"
       end
       def self.cmd
         system 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
       end


       def self.ucmd
         system 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"'
       end

       def self.name
         "Homebrew"
       end

       def self.installed?
         Faststrap::InstallActions.cmd? "brew"
       end
    end
  end
end
