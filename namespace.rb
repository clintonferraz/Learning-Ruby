=begin 
    Namespacing is a way of bundling logically related objects together. 
    Modules serve as a convenient tool for this. 
    This allows classes or modules with conflicting names to co-exist while avoiding collisions. 
    Think of this as storing different files with the same names under separate directories in your filesystem. 
=end


module ReverseWorld
    def self.puts text
        print text.reverse.to_s
    end
end

ReverseWorld::puts 'Clinton Ferraz'