module Types
  class QueryType < Types::BaseObject
   
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    field :searchMedicine , [[UserType]] , null: false do
       argument :name , String , required: true
       argument :district , String , required: true
    end

    def searchMedicine(**args)
      @gm = GlobalMedicine.where(name: args[:name])
      p @gm , "global medicine printed"
      @us = Medicine.where(global_medicine_id:@gm.first.medicine_id)
      p @us , "medicine printed"
      # User.where("user_id? AND district?", @us.user_ids.first,district: args[:district])
      user = @us.map { |med| User.where("user_id = ? AND district = ?",med.users_id,args[:district])}
      user
    end

    field :user, [UserType], null: false do
      argument :userId, Integer, required: true
    end

    def user( **args )
      User.where(user_id: args[:userId])
    end
  end
end
