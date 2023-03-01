defmodule BlockClock.Modules.PreMatch do
  use Ecto.Schema

  schema "pre_match" do
      field :pre_league_id, :integer
      field :pre_match_id, :integer
      field :pre_match_date, :date
      field :pre_match_time, :string
      field :pre_match_lteam, :string
      field :pre_match_vteam, :string
      field :pre_match_status, :string
      field :pre_match_filter, :string
      timestamps()

      #belongs_to :pre_league, BlockClock.Modules.PreLeague, define_field: :pre_feed_league_id
      has_many :pre_market, BlockClock.Modules.PreMarket, foreign_key: :market_pre_match_id, references: :pre_match_id
      #has_many :pre_market, BlockClock.Modules.PreMarket
  end

  end
