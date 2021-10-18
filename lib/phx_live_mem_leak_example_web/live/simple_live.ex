defmodule PhxLiveMemLeakExampleWeb.SimpleLive do
  use PhxLiveMemLeakExampleWeb, :live_view

  def mount(_params, _session, socket) do
    if connected?(socket) do
      :timer.send_interval(50, self(), :tick)
    end

    socket =
      assign_current_time(socket)
      |> assign(:page_title, "Memtest: Simple")

    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <h1><%= @now %></h1>
    <%= for n <- 1000..2000 do %>
      <span><%= n %></span>
    <% end %>
    """
  end

  def handle_info(:tick, socket) do
    socket = assign_current_time(socket)

    {:noreply, socket}
  end

  def assign_current_time(socket) do
    now =
      Time.utc_now()
      |> Time.to_string()

    assign(socket, now: now)
  end
end
