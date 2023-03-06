# Use the latest official Elixir image as the base
FROM elixir:1.12-alpine

# Install build dependencies
RUN apk update && \
    apk --no-cache --update add build-base git nodejs npm yarn && \
    mix local.rebar --force && \
    mix local.hex --force

# Set environment variables
ENV MIX_ENV=prod \
    PORT=4000

# Create and set the working directory
WORKDIR /app

# Copy the application files and assets
COPY . .

# Install dependencies and compile the app
RUN mix deps.get && \
    mix deps.compile && \
    mix assets.install && \
    mix phx.digest && \
    mix compile

# Start the Phoenix app
CMD ["mix", "phx.server"]
