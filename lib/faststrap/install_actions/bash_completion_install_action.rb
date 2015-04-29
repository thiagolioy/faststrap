module Faststrap
  module InstallActions
    class BashCompletionInstallAction < InstallAction

      def self.index_pos
        1
      end

      def self.description
        "BashCompletionInstallAction description"
      end

      def self.install_cmd
         puts "echo BashCompletionInstallAction"
      end
      
    end
  end
end
