require 'faststrap/install_actions/install_actions_helper'
require 'faststrap/install_action'

module Faststrap

  def self.list_actions(mod)
    cs = mod.constants.select {|c| Class === mod.const_get(c)}
    cs.collect! { |c| eval("#{mod}::#{c.to_s}") }
    sort_actions(cs)
  end

  def self.sort_actions(actions)
    actions.sort {|x,y| x.index_pos <=> y.index_pos }
  end

  def self.present_actions(mod)
    list_actions(mod).each do |a|
      puts "#{a.index_pos} - #{a.description}"
    end
  end


  Faststrap::InstallActions.load_default_actions


  puts "\nSelect what you want to install by typing the number of the action.\nYou can type more than one separeted by commas (Ex: 0,1,3,5)\nType all to install everything."
  present_actions(Faststrap::InstallActions)
  puts "all - Everything"






end
