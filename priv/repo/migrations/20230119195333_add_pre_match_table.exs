defmodule Blockclock.Repo.Migrations.AddPreMatchTable do
  use Ecto.Migration

  def change do
    create table("pre_match") do
      add :pre_league_id, :integer
      add :pre_match_id, :integer
      add :pre_match_date, :date
      add :pre_match_time, :string
      add :pre_match_lteam, :string
      add :pre_match_vteam, :string
      add :pre_match_status, :string
      add :pre_match_filter, :string
      timestamps()
      end

  end
end
