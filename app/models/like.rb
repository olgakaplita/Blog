class Like <ApplicationRecord
  belongs_to :user
  belongs_to :likeable, polymorphic: true #przedtem like nalezal do artykulu, teraz do concerna

  validates :user, uniqueness: { scope: :likeable, message: "already liked" }
end
