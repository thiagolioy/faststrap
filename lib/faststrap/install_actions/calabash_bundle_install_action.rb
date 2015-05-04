module Faststrap
  module InstallActions
    class CalabashBundleInstallAction < InstallAction

       def self.index
         10
       end

       def self.description
         "Install Calabash Bundle[calabash-common,calabash-cucumber,cs-bdd,blabla]"
       end
       def self.cmd
         ["calabash-common",'calabash-cucumber',
           'cs-bdd','blabla'].map { |d| system("sudo gem install #{d} --verbose") }
       end

       def self.name
         "Calabash Bundle[calabash-common,calabash-cucumber,cs-bdd,blabla]"
       end

    end
  end
end
