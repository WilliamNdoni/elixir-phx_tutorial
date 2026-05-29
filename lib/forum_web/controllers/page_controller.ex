defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def index(conn, _params) do
    users = [
      %{id: 1, name: "Alice", email: "alice@example.com"},
      %{id: 2, name: "Bob", email: "bob@example.com"},
      %{id: 3, name: "Charlie", email: "charlie@example.com"}
    ]
    render(conn, :users, wuzu: users, layout: false)
    # json(conn, %{users: users})
  end
end
