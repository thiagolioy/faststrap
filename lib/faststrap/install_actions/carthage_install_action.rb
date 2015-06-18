module Faststrap
  module InstallActions
    class CarthageInstallAction < InstallAction

      def self.group
        Faststrap::ActionsGroup::INSTALLERS
      end

      def self.description
        "Install Carthage"
      end
      def self.cmd
        Faststrap::InstallActions.brew_install "carthage"
      end

      def self.ucmd
        Faststrap::InstallActions.brew_uninstall "carthage"
      end

      def self.name
        "Carthage"
      end

      def self.installed?
        Faststrap::InstallActions.cmd? "carthage"
      end
    end
  end
end
