module Faststrap
  module InstallActions
    class XcodeCmdToolsInstallAction < InstallAction

       def self.index
         1
       end

       def self.description
         "Install Xcode cmd line tools"
       end
       def self.cmd
         system 'xcode-select --install'
       end

       def self.name
         "Xcode Cmd Tools"
       end

    end
  end
end
