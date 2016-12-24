defmodule TodoApi.Router do
  use TodoApi.Web, :router

  pipeline :graphql do
    # plug MyApp.Web.Context
  end

  scope "/api" do
    pipe_through :graphql

    forward "/", Absinthe.Plug, schema: TodoApi.Schema
  end

  if Mix.env == :dev do
    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: TodoApi.Schema
  end
end
