module Faststrap
  module InstallActions
    class RestClientInstallAction < InstallAction

       def self.index
         7
       end

       def self.description
         "Install RestClient"
       end
       def self.cmd
         system 'sudo gem install rest-client --verbose'
       end

       def self.name
         "rest-client"
       end

    end
  end
end
