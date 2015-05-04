module Faststrap
  module InstallActions
    class JenkinsInstallAction < InstallAction

       def self.index
         6
       end

       def self.description
         "Install Jenkins CI"
       end
       def self.cmd
         system 'brew install jenkins'
       end

       def self.name
         "Jenkins CI"
       end

    end
  end
end
