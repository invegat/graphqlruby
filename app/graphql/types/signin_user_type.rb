module Types
  class SigninUserType < BaseObject
    field :token, String, null:false
    field :user, UserType, null:false
  end
end