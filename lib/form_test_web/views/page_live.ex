defmodule FormTestWeb.PageLive do
  use FormTestWeb, :live_view

  def mount(_, _, socket) do
    socket = assign(socket, note: "")
    {:ok, socket}
  end

  def handle_event("update_text", params, socket) do
    socket = assign(socket, note: params["note"])
    {:noreply, socket}
  end

  def handle_event("save", params, socket) do
    IO.inspect(params)
    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Type here first</h1>
    <form phx-submit="save">
      <div class="form-group">
        <input id="note-text" type="text" name="note" placeholder="Note..." />
        <input type="submit" name="save" />
      </div>
    </form>

    <h1>This does</h1>
    <form phx-change="update_text" phx-submit="save">
      <div class="form-group">
        <input id="note-text" type="text" name="note" placeholder="Note..." value={@note} />
        <input type="submit" name="save" />
      </div>
    </form>
    """
  end
end
