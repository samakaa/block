defmodule BlockClock.Modules.PreMarket do
  use Ecto.Schema

  schema "pre_market" do
      field :market_pre_match_id, :integer
      field :pre_market_id, :integer
      field :pre_market_name, :string
      field :pre_market_status, :string
      field :pre_market_filter, :string
      timestamps()

      has_many :pre_odd, BlockClock.Modules.PreOdd
  end

  end
