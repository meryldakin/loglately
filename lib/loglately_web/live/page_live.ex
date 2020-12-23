defmodule LogLatelyWeb.PageLive do
  use LogLatelyWeb, :live_view
  alias LogLately.Users
  alias LogLately.Logs
  alias LogLately.Categories

  @impl true
  def mount(_params, _session, socket) do
    logs = Users.logs(1)
    categories = Categories.all_for_user(1)
    {:ok, assign(socket, logtext: "", logtitle: "", logs: logs, categories: categories)}
  end

  @impl true
  def handle_event(
        "addlog",
        %{"logtext" => logtext, "categories" => category_id, "logtitle" => logtitle},
        socket
      ) do
    {category_number, _} = Integer.parse(category_id)

    Logs.create(%{
      date: DateTime.utc_now(),
      text: logtext,
      title: logtitle,
      user_id: 1,
      category_id: category_number
    })

    {:noreply, socket |> assign(logtext: logtext) |> fetch()}
  end

  defp fetch(socket) do
    logs = Users.logs(1)
    assign(socket, logs: logs, page_title: "Logs")
  end
end
