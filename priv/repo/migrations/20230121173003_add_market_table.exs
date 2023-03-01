defmodule Blockclock.Repo.Migrations.AddMarketTable do
  use Ecto.Migration

  def change do
    create table("pre_market") do
      add :market_pre_match_id, :integer
      add :pre_market_id, :integer
      add :pre_market_name, :string
      add :pre_market_status, :string
      add :pre_market_filter, :string
      timestamps()
      end

  end
end
