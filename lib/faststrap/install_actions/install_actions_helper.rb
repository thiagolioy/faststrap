require 'colorize'
module Faststrap
  module InstallActions

    @@mod = Faststrap::InstallActions

    def self.load_default_actions
      Dir[File.expand_path '*install_action.rb', File.dirname(__FILE__)].each do |file|
        require file
      end
    end

    def self.list
      cs = @@mod.constants.select {|c| Class === @@mod.const_get(c)}
      cs.collect! { |c| eval("#{@@mod}::#{c.to_s}") }
      sort_actions(cs)
    end

    def self.list_installed
      l = list.select{|a| a.installed?}
      delete_and_push_action(find_brew_action(l),l)
    end

    def self.sort_actions(actions)
      l = actions.sort {|x,y| x.name <=> y.name}
      delete_and_unshift_action(find_brew_action(l),l)
    end

    def self.present(g)
      puts "\n#{g} Group:"
      list.select{|a| a.group == g}.each do |ac|
        puts " - #{ac.name}".yellow
      end
    end

    def self.cmd?(c)
      `which #{c}`
      $?.success?
    end


    def self.brew_install(g)
      brew?
      system "brew install #{g}"
    end

    def self.gem_install(g)
      system "sudo gem install #{g} --verbose"
    end

    def self.brew_uninstall(g)
      brew?
      system "brew uninstall #{g}"
    end

    def self.gem_uninstall(g)
      system "sudo gem uninstall #{g} --verbose"
    end

    private
    def self.brew?
      raise "HomeBrew not installed".red unless cmd? "brew"
    end

    def self.find_brew_action(l)
      l.find{|e| e.name.upcase.include?("brew".upcase)}
    end

    def self.delete_and_push_action(e,list)
      return l if e.nil?
      l.delete(e)
      l.push(e)
    end

    def self.delete_and_unshift_action(e,l)
      return l if e.nil?
      l.delete(e)
      l.unshift(e)
    end

  end
end
