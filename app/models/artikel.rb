class Artikel < ActiveRecord::Base
  belongs_to :autor
  has_and_belongs_to_many :themas
end
