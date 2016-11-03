class CreateProcedureClasses < ActiveRecord::Migration
  def change
    create_table :procedure_classes do |t|
      t.string :procedure_class_name
      t.references :procedure_type, index: true

      t.timestamps null: false
    end
  end
end
