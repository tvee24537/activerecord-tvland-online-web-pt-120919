class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    self.characters.collect do |character|
     "#{character.name} - #{character.show.name}"
    end.join
  end
  
  def actors_list
    array = []
    array_full_name =self.actors.map {|actor| actor.full_name}
    array_of_shows = self.shows.map {|show| show.name}
    show = array_full_name.concat array_of_shows
    array << show.join(" - ")
    array
   
  end
end