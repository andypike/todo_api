defmodule TodoApi.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name,     :string
    has_many :tasks, TodoApi.Task

    timestamps
  end
end
