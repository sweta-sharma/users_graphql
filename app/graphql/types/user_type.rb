module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :products, [Types::ProductType], null: true
    field :products_count, Integer, null: true

    def products_count
      object.products.size
    end
    
  end
end
