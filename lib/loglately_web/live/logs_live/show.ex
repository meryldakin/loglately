defmodule LogLatelyWeb.LogsLive.Show do
  use LogLatelyWeb, :live_view
  alias LogLately.Logs

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    case Logs.get(id) do
      nil -> {:ok, redirect(socket, to: Routes.live_path(socket, LogLatelyWeb.LogsLive.Index))}
      log -> {:ok, assign(socket, log: log)}
    end
  end
end
