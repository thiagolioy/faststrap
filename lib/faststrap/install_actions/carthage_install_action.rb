module Faststrap
  module InstallActions
    class CarthageInstallAction < InstallAction

       def self.index
         9
       end

       def self.description
         "Install Carthage"
       end
       def self.cmd
         system 'brew install carthage'
       end

       def self.name
         "Carthage"
       end

    end
  end
end
