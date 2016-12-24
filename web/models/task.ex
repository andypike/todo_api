defmodule TodoApi.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :title,     :string
    field :body,      :string
    field :completed, :boolean
    belongs_to :user, TodoApi.User

    timestamps
  end
end
