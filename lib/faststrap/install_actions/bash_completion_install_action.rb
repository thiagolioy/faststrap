module Faststrap
  module InstallActions
    class BashCompletionInstallAction < InstallAction

      def self.index
        8
      end

      def self.description
        "Install bash-completion cmd using homebrew"
      end

      def self.cmd
         system "brew install bash-completion"
      end

      def self.name
        "bash-completion"
      end

    end
  end
end
