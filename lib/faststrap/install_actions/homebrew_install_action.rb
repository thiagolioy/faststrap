module Faststrap
  module InstallActions
    class HomebrewInstallAction < InstallAction

       def self.index
         0
       end

       def self.description
         "Install Homebrew"
       end
       def self.cmd
         system 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
       end

       def self.name
         "Homebrew"
       end

    end
  end
end
