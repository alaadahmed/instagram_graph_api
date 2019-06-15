defmodule InstagramWeb.Schema.Types do
  use Absinthe.Schema.Notation
  alias InstagramWeb.Schema.Types

  import_types(Types.PhotoType)
end
