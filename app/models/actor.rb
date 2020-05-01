class Actor < ActiveRecord::Base

    has_many :characters 
    has_many :shows, through: :characters

    def full_name
       return "#{self.first_name} #{self.last_name}"
    end 

    def list_roles
     characters = Character.all.select {|character| character.actor_id == self.id}
     name = characters.select {|character| character.name}
     shows = characters.map {|char| char.show_id}
     show = shows.select {|show| show.name}
     puts "#{name} - #{show}"
   

    end 
    
        
  
end