class AddReviewToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :review, :boolean, default: false
  end
end
