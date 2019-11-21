class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network


  def actors_list
    self.actors.collect do {|actor| actor.full_name}
  end
end
