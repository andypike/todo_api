defmodule TodoApi.Schema do
  use Absinthe.Schema

  import_types TodoApi.Schema.Types

  query do
    field :tasks, list_of(:task) do
      arg :completed, :boolean
      resolve &TodoApi.TaskResolver.all/2
    end
  end

  mutation do
    field :create_task, type: :task do
      arg :title, non_null(:string)
      arg :body, non_null(:string)
      arg :completed, :boolean
      arg :user_id, non_null(:integer)

      resolve &TodoApi.TaskResolver.create/2
    end
  end
end
