defmodule InstagramWeb.Resolvers.PhotoResolver do
  alias Instagram.Posts

  def photos(_, _, _) do
    {:ok, Posts.list_photos()}
  end
end
