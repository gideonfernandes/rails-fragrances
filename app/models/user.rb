class User < ApplicationRecord
  self.table_name = :users

  before_save :apply_password_hash

  has_many :purchases
  validates_presence_of :name, :last_name, :email, :password_hash

  def create
    apply_password_hash

    user = User.new(
      name: params[:name],
      last_name: params[:last_name],
      email: params[:email],
      password_hash: password_hash
    )

    render json: :ok if user.save!
  end

  private

  def apply_password_hash
    if params[:password] && params[:password_confirmation]
      self.password_hash = BCrypt::Password.create(params[:password])
    end

    errors.add(:base, 'Senhas não correspondem ou não foram informadas.')
  end

  def valid_password?(password)
    bcrypt.compare(password, password_hash)
  end
end
