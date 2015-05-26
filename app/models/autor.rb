class Autor < ActiveRecord::Base
  has_many :artikels

  validates_presence_of :name
end
