class Mutations::UserLogin < Mutations::BaseMutation

#arguments

  argument :username, String, required: true
  argument :passwords, String, required: true



#field

  field :response, Types::UserType, null: true
  field :error, [String], null: true



  def resolve (**args)

    user = User.where(username: args[:username], passwords: args[:passwords])
    p user, "printing user"

    begin
      if user.size > 0
        { response: user.first, error: [] }
      else
        { response: nil, error: ["Username or Password might be wrong"] }
      end
    rescue => exception
      p exception
    end
  end

end