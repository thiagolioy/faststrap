require 'thor'
require 'thor/group'

require 'faststrap/install_actions/install_actions_helper'
require 'faststrap/install_action'

module Faststrap


  def self.possible_responses(actions_count)
    (1..actions_count).to_a.collect! { |e| e.to_s } << "*"
  end

  def self.handle_answer(answer,actions)
    actions.each do |a|
      if answer == "*"
        a.run
      else
        a.run if answer == a.index
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
       install_actions_count = install_actions.count

       Faststrap::InstallActions.present
       puts "* - Everything"

       everything = options[:all]

       if everything
         puts "Installing everything .."
         Faststrap.handle_answer('*',install_actions)
       else
         answer = ask("What do you want to install for ios environment ?",
                        :limited_to => Faststrap.possible_responses(install_actions_count))
         answer = (answer.to_i) -1  unless answer == '*'
         Faststrap.handle_answer(answer,install_actions)
       end

     end
  end





end
