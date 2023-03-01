defmodule BlockClock.Modules.PreLeague do
  use Ecto.Schema

  schema "pre_league" do
    field :pre_league_id,       :integer
    field :pre_league_name,     :string
    field :pre_league_country,  :string
    field :top_league, :boolean, default: false
    field :pre_league_status,   :string
    field :pre_league_filter,   :string
    timestamps()

    #has_many :pre_matchs, BlockClock.Modules.PreMatch
    has_many :pre_matchs, BlockClock.Modules.PreMatch, foreign_key: :pre_league_id, references: :pre_league_id
  end

  end
