defmodule BlockclockWeb.Router do
  use BlockclockWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {BlockclockWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug BlockclockWeb.ListIdPlug
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BlockclockWeb do
    pipe_through :browser
    get "/hello", PageController, :hello

    #get "/", PageController, :index
    live "/copy", PregameCopyLive, :index
    live "/", HomeLive, :index
    live "/home", HomeLive, :index
    live "/inplay", PageLive, :topmenu
    live "/inplay1", InplayLive, :topmenu
    live "/pregame/:sport", PregameLive, :index
    live "/pregame/:sport/:list", PregameLive, :index
    live "/example", ExampleLive, :index
      get "/*path", FourohfourController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", BlockclockWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: BlockclockWeb.Telemetry
    end
  end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through :browser

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
