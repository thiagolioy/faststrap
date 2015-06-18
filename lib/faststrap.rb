require 'colorize'
require 'thor'
require 'thor/group'

require 'faststrap/install_actions/install_actions_helper'
require 'faststrap/install_action'

module Faststrap


  def self.handle_answer(answer,actions)
    actions.each do |a|
      if answer == "*"
        a.run
      else
        a.run if answer.map{|e| e.upcase}.include?(a.name.upcase)
      end
    end
  end


  class Bootstrap < Thor
    include Thor::Actions

    desc 'ios', 'bootstrap your computer for ios env'
    method_option :all,:aliases => "-a", :type => :boolean, :default => false
    def ios
      puts "We have the follow actions for ios :"

      Faststrap::InstallActions.load_default_actions
      install_actions = Faststrap::InstallActions.list

      ag = Faststrap::ActionsGroup
      [ag::INSTALLERS,ag::COMAND_LINE,ag::TESTS,ag::CI].map do |g|
        Faststrap::InstallActions.present(g)
      end

      everything = options[:all]

      if everything
        puts "Installing everything .."
        Faststrap.handle_answer('*',install_actions)
      else
        answer = ask("\nType the actions you want to install separated by comma (eg. git,xctool)\n or type * for everything :")
        answer =  answer.include?("*") ? "*" : answer.split(',')
        Faststrap.handle_answer(answer,install_actions)
      end

    end

    desc 'clean', 'clean your computer of all faststrap installed tools'
    def clean
      Faststrap::InstallActions.load_default_actions

      if Faststrap::InstallActions.list_installed.empty?
        puts "You dont have any faststrap tools installed".yellow
      else
        puts "All the tools that will be uninstalled:"
        Faststrap::InstallActions.list_installed.each{|e| puts e.name.yellow}

        answer = yes?("Are you sure?".red)
        Faststrap::InstallActions.list_installed.map{|a| a.uninstall} if answer
      end
    end

  end


end
