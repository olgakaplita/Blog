class Like <ApplicationRecord
  belongs_to :user
  belongs_to :article, polymorphic: true

  validates :user, uniqueness: { scope: :article }
end
