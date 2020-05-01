class Show < ActiveRecord::Base

    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        characters = Character.find_by(show_id: self.id)
        actor = Actor.find_by(id: characters.actor_id)
        "#{actor.first_name} #{actor.last_name}"
    end
  
end