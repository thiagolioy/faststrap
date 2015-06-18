module Faststrap
  module InstallActions
    class XcodeCmdToolsInstallAction < InstallAction

       def self.group
         Faststrap::ActionsGroup::COMAND_LINE
       end

       def self.description
         "Install Xcode cmd line tools"
       end
       def self.cmd
         system 'xcode-select --install'
       end

       def self.ucmd
         `sudo rm -rf /Library/Developer/CommandLineTools`
       end

       def self.name
         "XcodeCmdTools"
       end

       def self.installed?
          `xcode-select -p`
          $?.success?
       end
    end
  end
end
