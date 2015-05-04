module Faststrap
  module InstallActions
    class XctoolInstallAction < InstallAction

       def self.index
         4
       end

       def self.description
         "Install Xctool"
       end
       def self.cmd
         system 'brew install xctool'
       end

       def self.name
         "xctool"
       end

    end
  end
end
