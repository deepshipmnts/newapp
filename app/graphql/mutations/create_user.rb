class Mutations::CreateUser < Mutations::BaseMutation

#arguments which api call will give
  argument type: Types::UserArgumentType
  # type Types::UserType

  def resolve(**args)
    User.create!(args.to_h)
  end

end