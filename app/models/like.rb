class Like <ApplicationRecord
  belongs_to :user
  belongs_to :likeable, polymorphic: true #przedtem like nalezal do artykulu, teraz do concerna

  scope :last_test_user_like, -> { last_user_like("test@example.com") }

  scope :last_user_like, ->(email) { joins(:user).where("users.email" => email).limit(1) }

  validates :user, uniqueness: { scope: :likeable, message: "already liked" }
end
