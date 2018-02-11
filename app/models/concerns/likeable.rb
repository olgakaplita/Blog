module Likeable
  extend ActiveSupport::Concern

  included do
    has_many :likes, as: :likeable #jesli mam polimorficzna relacje sa dostepne lajki w artykule, jesli nie dodamy tego article to on bedzie pobieral wszystko a nie poszczeglone lajki, zeby info bylo dosepne pod dwoma polami w taabeli like
    has_many :users, through: :likes
  end
end
