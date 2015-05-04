module Faststrap
  module InstallActions
    class GitInstallAction < InstallAction

       def self.index
         2
       end

       def self.description
         "Install Git"
       end
       def self.cmd
         system 'brew install git'
       end

       def self.name
         "Git"
       end

    end
  end
end
