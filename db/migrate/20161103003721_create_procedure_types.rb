class CreateProcedureTypes < ActiveRecord::Migration
  def change
    create_table :procedure_types do |t|
      t.string :procedure_type_name
      t.references :procedure, index: true

      t.timestamps null: false
    end
  end
end
