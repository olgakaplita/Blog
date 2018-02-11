module Likeable
  extend ActiveSupport::Concern

  included do
    has_many :likes
    has_many :users, through: :likes
  end
end
