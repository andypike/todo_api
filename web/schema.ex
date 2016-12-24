defmodule TodoApi.Schema do
  use Absinthe.Schema

  import_types TodoApi.Schema.Types

  query do
    field :tasks, list_of(:task) do
      arg :completed, :boolean
      resolve &TodoApi.TaskResolver.all/2
    end
  end
end
