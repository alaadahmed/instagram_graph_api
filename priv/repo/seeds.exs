alias Instagram.{Posts, Repo}

photos_list = [
  "https://freestocks.org/fs/wp-content/uploads/2018/04/cat_sitting_on_a_desk_3-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2017/05/young_husky-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/08/empty_stroller_in_a_crowded_old_town_square-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/06/pedestrian_overpass_at_the_harbor-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/08/grocery_store_2-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/05/coffee_chocolate_cake_and_an_analog_camera-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/03/pound_easter_cake_6-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/02/iphone_x_on_the_table_in_a_cafe-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/11/man_with_two_cameras_over_his_neck_2-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/06/people_on_the_pier_in_the_evening-1000x667.jpg"
]

for i <- 0..(length(photos_list) - 1) do
  photo = %{
    image_url: Enum.at(photos_list, i),
    caption: Faker.Lorem.Shakespeare.hamlet()
  }

  %Posts.Photo{}
  |> Posts.Photo.changeset(photo)
  |> Repo.insert!()
end
