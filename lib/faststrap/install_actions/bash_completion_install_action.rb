module Faststrap
  module InstallActions
    class BashCompletionInstallAction < InstallAction

      def self.index
        1
      end

      def self.description
        "BashCompletionInstallAction description"
      end

      def self.cmd
         puts "echo BashCompletionInstallAction"
      end

      def self.name
        "bash-completion"
      end

    end
  end
end
