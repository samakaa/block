defmodule BlockClock.Modules.PreOdd do
  use Ecto.Schema

  schema "pre_odd" do
    field :odd_market_id, :integer
    field :pre_odd_type, :string, default: "nil"
    field :pre_odd_name, :string
    field :pre_odd_name1, :string, default: "nil"
    field :pre_odd_value, :string
    field :pre_odd_status, :string
    field :pre_odd_filter, :string
    timestamps()

  end

  end
