module Faststrap
  module InstallActions
    class FastlaneInstallAction < InstallAction

       def self.index
         5
       end

       def self.description
         "Install Fastlane"
       end
       def self.cmd
         system 'sudo gem install fastlane --verbose'
       end

       def self.name
         "Fastlane"
       end

    end
  end
end
