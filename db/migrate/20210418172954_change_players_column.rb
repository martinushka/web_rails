class ChangePlayersColumn < ActiveRecord::Migration[5.2]
  def change
    change_column table_name :players, column_name :pob, type :string
  end
end
