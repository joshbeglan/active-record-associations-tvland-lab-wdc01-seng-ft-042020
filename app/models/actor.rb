class Actor < ActiveRecord::Base

    has_many :characters 
    has_many :shows, through: :characters

    def full_name
       return "#{self.first_name} #{self.last_name}"
    end 

    def list_roles
    #  characters = Character.all.select {|character| character.actor_id == self.id}
    #  name = characters.select {|character| character.name}
    #  shows = characters.map {|char| char.show_id}
    #  show = shows.select {|show| show.name}
    #  puts "#{name} - #{show}"
   
    character = Character.find_by(actor_id: self.id)
    show = Show.find_by(id: character.show_id)

    return "#{character.name} - #{show.name}"



    end 
    
        
  
end