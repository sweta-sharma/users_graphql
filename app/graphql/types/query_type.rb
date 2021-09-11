module Types
  class QueryType < Types::BaseObject
    # Users field
    field :users, [Types::UserType], null: false

    # Users Query
    def users
      User.all
    end

    # Field for one user
    field :user, Types::UserType, null: false do
      # Arguments to identify user
      argument :id, ID, required: true
    end

    # Find User Query
    def user(id:)
      User.find(id)
    end
  end
end
