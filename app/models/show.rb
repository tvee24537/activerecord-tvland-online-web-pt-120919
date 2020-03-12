class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actor, through: :characters

  def actors_list
    array = []
    array_full_name = self.actor.map {|actor| actor.full_name}
    array_of_shows = self.shows.map {|show| show.name}
    show = array_full_name.concat array_of_shows
    array << show.join(" - ")
    array
   
  end
end