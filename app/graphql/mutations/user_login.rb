class Mutations::UserLogin < Mutations::BaseMutation

#arguments

  argument :username, String, required: true
  argument :password, String, required: true

#field
  field :token, String, null: true
  field :user, Types::UserType, null: true

  def resolve (**args)

    user = User.find_by!(username: args[:username])
    p user, "printing user"

    # return unless user
    return unless user.authenticate(args[:password])
    token = Token.token(user)
    { user: user, token: token }
    
  end
end