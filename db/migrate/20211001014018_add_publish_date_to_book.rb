class AddPublishDateToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :publish_date, :date
  end
end
