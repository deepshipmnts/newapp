class Mutations::CreateUser < Mutations::BaseMutation

#arguments which api call will give
  argument :user, Types::UserArgumentType
  # type Types::UserType
  field :response, Types::UserType
  def resolve(**args)
    {response: User.create!(args[:user].to_h)}
  end

end