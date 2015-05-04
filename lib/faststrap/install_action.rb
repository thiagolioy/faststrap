require 'faststrap/install_actions/install_actions_helper'

module Faststrap
  class InstallAction

    def self.index
      0
    end

    def self.description
      "InstallAction description"
    end

    def self.cmd
      "InstallAction cmd"
    end

    def self.name
      "InstallAction"
    end

    def self.run
      puts "Installing #{name} .."
      cmd
    end
  end
end
