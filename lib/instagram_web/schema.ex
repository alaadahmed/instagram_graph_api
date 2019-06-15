defmodule InstagramWeb.Schema do
  use Absinthe.Schema
  alias InstagramWeb.Resolvers

  import_types(__MODULE__.Types)

  query do
    @desc "Get a list of photos"
    field :photos, list_of(:photo_type) do
      resolve(&Resolvers.PhotoResolver.photos/3)
    end
  end

  # mutation do
  # end

  # subscription do
  # end
end
