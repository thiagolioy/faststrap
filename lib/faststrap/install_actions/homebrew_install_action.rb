module Faststrap
  module InstallActions
    class HomebrewInstallAction < InstallAction

       def self.index
         0
       end

       def self.description
         "HomebrewInstallAction description"
       end
       def self.cmd
         puts "echo HomebrewInstallAction"
       end

       def self.name
         "Homebrew"
       end

    end
  end
end
