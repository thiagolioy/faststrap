module Faststrap
  module InstallActions
    def self.load_default_actions
      Dir[File.expand_path '*install_action.rb', File.dirname(__FILE__)].each do |file|
        require file
      end
    end
  end
end
