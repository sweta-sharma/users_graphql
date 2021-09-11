class Mutations::CreateUser < Mutations::BaseMutation
  # fields to be updated
  argument :name, String, required: true
  argument :email, String, required: true

  # Fields to return after object is created
  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  # To pass params to create an object
  def resolve(name:, email:)
      user = User.new(name: name, email: email)
      if user.save
          {
              user: user,
              errors: []
          }
      else
          {
              user: nil,
              errors: users.errors.full_messages
          }
      end
  end
end