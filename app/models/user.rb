class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :location
  has_many :ownedplants, through: :plantlist
  has_many :plants, through: :ownedplants

  has_many :private_sent_messages, class_name: 'PrivateMessage', foreign_key: 'sender_id'
  has_many :private_received_messages, class_name: 'PrivateMessage', foreign_key: 'recipient_id'
  has_many :comments
  has_many :likes

  # validates :password, presence: true, length: { minimum: 8 }, format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^a-zA-Z0-9]).{8,}\z/ }
  validates :first_name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 100 }, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email address please" }
  validates :date_of_birth, presence: true
  validates :username, presence: true, uniqueness: true

  def remember(remember_token)
    remember_digest = BCrypt::Password.create(remember_token)
    self.update(remember_digest: remember_digest)
  end
end
