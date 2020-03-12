class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    array = []
    array_full_name = self.actors.map {|actor| actor.full_name}
    array
   
  end
  
  #def list_roles
   # self.characters.collect do |character|
    # "#{character.name} - #{character.show.name}"
    #end.join
  #end
end