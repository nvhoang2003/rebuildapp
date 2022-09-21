class Reader < ApplicationRecord
  attr_accessor :activation_token
  before_create :create_token
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :name, presence: true,  uniqueness: true
         VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
         validates :email, format: {with: VALID_EMAIL_REGEX}
         validates :age, presence: true, numericality: { greater_than: 0, less_than: 100}
         validates :gender, numericality: {only_integer: true, less_than:2, message: "Gender seems wrong"}
         validates :phonenumber , presence: true, numericality: { only_integer: true }, length: { is: 10 }
         validates :address, presence: true, length: {minimum: 8, maximum: 255}
         validates :password , length: {minimum: 8, maximum: 255}
  has_and_belongs_to_many :gift, join_table: 'readergifts'
  has_and_belongs_to_many :story, join_table: 'readerstories'


  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
    BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  private
    def create_token
      self.activation_token = Reader.new_token
      self.activation_digest = Reader.digest(activation_token)
    end

end
