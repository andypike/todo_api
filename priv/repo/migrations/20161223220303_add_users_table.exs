defmodule TodoApi.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, default: "", null: false

      timestamps()
    end
  end
end
