class Contact

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :phone, :body

  validates :name,
    presence: true

  validates :email,
    presence: true

  validates :body,
    presence: true

end