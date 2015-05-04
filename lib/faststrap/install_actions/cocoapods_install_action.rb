module Faststrap
  module InstallActions
    class CocoapodsInstallAction < InstallAction

       def self.index
         3
       end

       def self.description
         "Install Cocoapods"
       end
       def self.cmd
         system 'sudo gem install cocoapods --verbose'
       end

       def self.name
         "Cocoapods"
       end

    end
  end
end
