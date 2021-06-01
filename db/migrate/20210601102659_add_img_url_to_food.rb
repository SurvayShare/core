class AddImgUrlToFood < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :img_url, :string,
                default: 'https://recipesharebucket.s3.amazonaws.com/d0b8ee08-433f-486e-b340-a35302fe41a6.jpg', null: false
  end
end
