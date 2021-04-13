require 'pry'
class Character < ActiveRecord::Base
    belongs_to :show
    belongs_to :actor

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

    def build_show(name)
        # binding.pry
        character_show = Show.find_or_create_by(name)
        self << character_show
    end
   
end