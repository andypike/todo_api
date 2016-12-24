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

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :user_id, :completed])
    |> validate_required([:title, :body, :user_id])
  end
end
