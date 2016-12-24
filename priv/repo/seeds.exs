# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TodoApi.Repo.insert!(%TodoApi.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

TodoApi.Repo.delete_all(TodoApi.Task)
TodoApi.Repo.delete_all(TodoApi.User)

andy    = TodoApi.Repo.insert!(%TodoApi.User{name: "Andy"})
charlie = TodoApi.Repo.insert!(%TodoApi.User{name: "Charlie"})

TodoApi.Repo.insert!(
  %TodoApi.Task{
    title: "Create GraphQL API",
    body: "Use Elixir Phoenix and Absinthe",
    completed: true,
    user: andy
  }
)

TodoApi.Repo.insert!(
  %TodoApi.Task{
    title: "Create client app for API",
    body: "Use Vuejs and Apollo",
    user: charlie
  }
)
