defmodule TodoApi.Schema.Types do
  use Absinthe.Schema.Notation

  object :user do
    field :id, :id
    field :name, :string
  end

  object :task do
    field :id, :id
    field :title, :string
    field :body, :string
    field :completed, :boolean
    field :user, type: :user
  end
end
