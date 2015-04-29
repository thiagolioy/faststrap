module Faststrap
  module InstallActions
    class HomebrewInstallAction < InstallAction

       def self.index_pos
         0
       end

       def self.description
         "HomebrewInstallAction description"
       end
       def self.install_cmd
         puts "echo HomebrewInstallAction"
       end
    end
  end
end
