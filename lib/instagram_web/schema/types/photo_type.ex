defmodule InstagramWeb.Schema.Types.PhotoType do
  use Absinthe.Schema.Notation
  import_types(Absinthe.Type.Custom)

  object :photo_type do
    field(:id, non_null(:id))
    field(:image_url, non_null(:string))
    field(:caption, :string)

    field(:inserted_at, non_null(:datetime))
    field(:updated_at, non_null(:datetime))
  end
end
