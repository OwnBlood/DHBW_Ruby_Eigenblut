class Artikel < ActiveRecord::Base
  belongs_to :autor
  has_and_belongs_to_many :themas

  validates_presence_of :datum
  validates_uniqueness_of :name

  default_scope { sortByDate }

  def self.sortByDate
    order(datum: :desc)
  end


end
