defmodule LogLatelyWeb.LogsLive.Index do
  use LogLatelyWeb, :live_view
  alias LogLately.Users

  @impl true
  def mount(_params, _session, socket) do
    logs = Users.logs(1)
    {:ok, assign(socket, logtext: "", logtitle: "", logs: logs)}
  end
end
