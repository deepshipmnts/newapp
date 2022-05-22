
  Rails.application.routes.draw do
    get "/graphql", to: "graphql#execute"
    post "/graphql", to: "graphql#execute"
    # if Rails.env.development?
    #   mount GraphiQL::Rails::Engine, at: "/grapihql", graphql_path: "/graphql"
    # end
  end