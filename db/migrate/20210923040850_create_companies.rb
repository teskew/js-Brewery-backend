class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :brewery_type
      t.string :city
      t.string :phone
      t.string :website_url

      t.timestamps
    end
  end
end
