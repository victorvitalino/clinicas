class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :procedure_name

      t.timestamps null: false
    end
  end
end
