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

    def self.sort_actions(actions)
      actions.sort {|x,y| x.index <=> y.index }
    end

    def self.present
      list.each do |a|
        puts "#{a.index + 1} - #{a.name}"
      end
    end

  end
end
