class ChangeColumnTypeFromPublishedAt < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :published_at, 'date USING CAST(published_at AS date)'
  end
end
