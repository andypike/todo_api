defmodule TodoApi.TaskResolver do
  alias TodoApi.Repo
  alias TodoApi.Task

  import Ecto.Query

  def all(args, _) do
    args = Enum.into(args, [])

    tasks = from(Task, where: ^args, preload: :user)
            |> Repo.all

    {:ok, tasks}
  end

  def create(args, _) do
    %Task{}
    |> Task.changeset(args)
    |> Repo.insert
  end
end
