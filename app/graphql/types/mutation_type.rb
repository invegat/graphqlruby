module Types
  class MutationType < Types::BaseObject
    field :create_link, Types::LinkType, null: false, mutation: Mutations::CreateLink
    field :create_user, Types::UserType, null: false, mutation: Mutations::CreateUser
    field :create_vote, Types::VoteType, null: false, mutation: Mutations::CreateVote
    field :signin_user, Types::SigninUserType, null: false, mutation: Mutations::SignInUser
    

    # TODO: remove me
  #   field :test_field, String, null: false,
  #     description: "An example field added by the generator"
  #   def test_field
  #     "Hello World"
  #   end
  end
end
