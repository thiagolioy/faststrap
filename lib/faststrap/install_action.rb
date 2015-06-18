require 'faststrap/install_actions/install_actions_helper'

module Faststrap
  module ActionsGroup
    INSTALLERS = "INSTALLERS"
    COMAND_LINE = "COMAND_LINE"
    TESTS = "TESTS"
    CI = "CI"
  end
  class InstallAction

    def self.group
      ""
    end

    def self.description
      "InstallAction description"
    end


    def self.cmd
      "InstallAction cmd"
    end

    def self.ucmd
      "UninstallAction cmd"
    end

    def self.name
      "InstallAction"
    end

    def self.run
      puts "Installing #{name} .."
      cmd
    end

    def self.uninstall
      puts "Uninstalling #{name} .."
      ucmd
    end

  end
end
