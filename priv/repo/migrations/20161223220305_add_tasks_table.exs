defmodule TodoApi.Repo.Migrations.AddTasksTable do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title,     :string,  default: "",    null: false
      add :body,      :text,    default: "",    null: false
      add :completed, :boolean, default: false, null: false
      add :user_id, references(:users),         null: false

      timestamps()
    end
  end
end
