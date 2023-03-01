defmodule Blockclock.Repo.Migrations.AddLeagueTable do
  use Ecto.Migration

  def change do
    create table("pre_league") do
    add :pre_league_id, :integer, unique: true
    add :pre_league_name, :string, size: 100
    add :pre_league_country, :string
    add :top_league, :boolean, default: false
    add :pre_league_status, :string
    add :pre_league_filter, :string
    timestamps()
    end
  end
end
