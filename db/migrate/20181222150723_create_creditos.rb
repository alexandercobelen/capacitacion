class CreateCreditos < ActiveRecord::Migration[5.1]
  def change
    create_table :creditos do |t|
      t.belongs_to :client, foreign_key: true
      t.belongs_to :producto, foreign_key: true
      t.integer :plazo, null: false
      t.decimal :monto, null: false, decimal: 0.0
      t.integer :periodicidad, null: false, default: 3
      t.text :destino

      t.timestamps
    end
  end
end
