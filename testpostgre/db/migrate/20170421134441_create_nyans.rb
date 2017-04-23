class CreateNyans < ActiveRecord::Migration[5.0]
  def change
    create_table :nyans do |t|

      t.timestamps
    end
  end
end
