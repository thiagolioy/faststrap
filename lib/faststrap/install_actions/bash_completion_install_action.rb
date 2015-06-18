module Faststrap
  module InstallActions
    class BashCompletionInstallAction < InstallAction

      def self.group
        Faststrap::ActionsGroup::COMAND_LINE
      end

      def self.description
        "Install bash-completion cmd using homebrew"
      end

      def self.cmd
        Faststrap::InstallActions.brew_install "bash-completion"
      end

      def self.ucmd
        Faststrap::InstallActions.brew_uninstall "bash-completion"
      end

      def self.name
        "bash-completion"
      end

      def self.installed?
        Faststrap::InstallActions.cmd? "bash-completion"
      end


    end
  end
end
