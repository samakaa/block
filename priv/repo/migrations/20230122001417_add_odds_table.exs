defmodule Blockclock.Repo.Migrations.AddOddsTable do
  use Ecto.Migration

  def change do
    create table("pre_odd") do
      add :pre_market_id, references("pre_market")
      add :pre_odd_type, :string, default: "nil"
      add :pre_odd_name, :string
      add :pre_odd_name1, :string, default: "nil"
      add :pre_odd_value, :string
      add :pre_odd_status, :string
      add :pre_odd_filter, :string
      timestamps()
      end

  end
end
